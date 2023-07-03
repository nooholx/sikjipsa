import cx_Oracle

def getDBConn_Cursor() :
    try :
        dsn = cx_Oracle.makedsn("localhost", 1521, "xe")    
        conn = cx_Oracle.connect("sikjipsa", "dbdb", dsn)        
        cursor = conn.cursor()
    except :
        return 'n', 'n'
    
    return conn, cursor

def getClose(cursor,conn) :    
    try:    
        cursor.close()
        conn.close()
    except:
        pass
    
def getFetchOne(colname, row):
    col = []
    for c in colname :
        col.append(c[0].lower())
    
    dict_col = {}
    for i in range(0, len(row), 1) :
        dict_col[col[i]] = row[i]
    
    return dict_col
    
def getFetchAll(colname, row):
    col = []
    for c in colname :
        col.append(c[0].lower())
        
    list_row = []
    for  columns in row :
        dict_col = {}
        for i in range(0, len(columns), 1) :
            dict_col[col[i]] = columns[i]
        list_row.append(dict_col) 
    
    return list_row

def getPostMain():
    try:
        conn,cursor = getDBConn_Cursor()
        sql = """
                Select * FROM post2
                Order By post2_no Asc
        """
        cursor.execute(sql)
        row = cursor.fetchall()
        colname = cursor.description 
        post_list = getFetchAll(colname, row)
        getClose(cursor,conn)
        return post_list
    except:
        getClose(conn,cursor)
        return None


def getPostView(p_view):
    conn, cursor =  getDBConn_Cursor()
    # sql = """
    #     SELECT * FROM post2
    #     WHERE post2_no = '{}'
    # """.format(p_view)
    sql = """
        SELECT * FROM post2
        WHERE post2_no =:post2_no"""
    cursor.execute(sql, post2_no = p_view)
    # cursor.execute(sql)
    
    row = cursor.fetchone()
    colname = cursor.description
    
    post_dict = getFetchOne(colname, row)
    
    getClose(cursor, conn)
    return post_dict

def chkDB(p_num):
    conn,cursor = getDBConn_Cursor()
    sql = """
        SELECT * FROM POST2 WHERE post2_no = '{}'
    """.format(p_num)
    cursor.execute(sql)
    row = cursor.fetchone()
    
    if row == None:
        result = {"rs":"no"} 
    else:
        result = {"rs":"yes"}
    getClose(cursor,conn)
    return result

def post_searchDB(po_num):
    conn,cursor = getDBConn_Cursor()
    sql = """
        SELECT * FROM POST2 WHERE post2_no = '{}'
    """.format(po_num)
    cursor.execute(sql)
    colname = cursor.description
    row = cursor.fetchone()
    
    result = getFetchOne(colname, row)
    
    getClose(cursor,conn)
    return result    

def InsertDB(p_no,p_con,p_title,img_nm):
    try:
        conn,cursor = getDBConn_Cursor()
        if img_nm == '' or img_nm == None:
            sql = """
            INSERT INTO post2 (post2_no, post2_content, post2_title) 
                VALUES ('{0}', '{1}', '{2}')
            """.format(p_no, p_con, p_title)
        else:
            sql = """
                INSERT INTO post2 (post2_no, post2_content, post2_title, img_fullname) 
                    VALUES ('{0}', '{1}', '{2}', '{3}')
            """.format(p_no, p_con, p_title, img_nm)
        cursor.execute(sql)
        
        conn.commit()
        getClose(conn,cursor)

        return "y"
    except:
        return "n"

def setUpdate(p_con,p_title,img_nm,p_no):
    try:
        conn,cursor = getDBConn_Cursor()
        sql = ""
        if img_nm == '':
            sql = """
            UPDATE post2 SET post2_content = '{0}', post2_title = '{1}' 
                WHERE post2_no = '{2}'
            """.format(p_con, p_title,p_no)
        else:
            sql = """
                UPDATE post2 SET post2_content = '{0}', post2_title = '{1}',
                    img_fullname = '{2}' WHERE post2_no = '{3}'
            """.format(p_con, p_title, img_nm,p_no)
        cursor.execute(sql)
        conn.commit()
        
        getClose(conn,cursor)
    except:
        getClose(conn,cursor)
        return 'n'
    return 'y'

def DeleteDB(del_no):
    try:
        conn,cursor = getDBConn_Cursor()
        sql = "DELETE FROM post2 WHERE (post2_no = {})".format(del_no)
        cursor.execute(sql)
        conn.commit()
        getClose(conn,cursor)
        return "y"
    except:
        getClose(conn,cursor)
        return "n"

def searchPost(a):
    test = a.split(' ')
    sql = ""
    if len(test) == 1:
        sql = """
                SELECT DISTINCT * FROM post2 
                WHERE post2_title LIKE '%{0}%'
            """.format(test[0])
    elif len(test) == 2:
        sql = """
                SELECT DISTINCT * FROM post2 
                WHERE REGEXP_LIKE(post2_title, '{0}|{1}')
            """.format(test[0],test[1])
    elif len(test)==3:
        sql = """
                SELECT DISTINCT * FROM post2 
                WHERE REGEXP_LIKE(post2_title, '{0}|{1}|{2}')
            """.format(test[0],test[1],test[2])
    
    try:
        conn,cursor = getDBConn_Cursor()
        cursor.execute(sql)
        rows = cursor.fetchall()
        colname = cursor.description
        search_list = getFetchAll(colname,rows)
        getClose(conn,cursor)
        return search_list
    except:
        getClose(conn,cursor)
        return "n"

def upCount(p_count,p_no):
    try:
        conn,cursor = getDBConn_Cursor()
        sql = "UPDATE post2 SET post2_count = {0} WHERE post2_no = '{1}' ".format(p_count,p_no)
        cursor.execute(sql)
        conn.commit()
        getClose(conn,cursor)
        return "y"
    except:
        return "n"

# DB 조회 테스트 삭제해도됨
def getMemberList() :
    conn, cursor = getDBConn_Cursor()
    sql = """
            Select *
            From member
            where mem_id like '{}%'
            Order By mem_id Asc
    """.format('a')
    
    ### 구문을 서버에게 보내서 요청하고, 결과 받아오기
    cursor.execute(sql)
    ### 받아온 결과를 달라고 요청
    row = cursor.fetchall()
        
    ### 컬럼명 조회하기
    colname = cursor.description  
    ### [{}] 형태로 변환하기  
    member_list = getFetchAll(colname, row)    
    
    ### DB연결 해제하기
    getClose(cursor, conn)
    
    return member_list