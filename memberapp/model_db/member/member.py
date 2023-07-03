import cx_Oracle

def getDBConn_Cursor() : 
    try :
        ### 서버를 찾아가야지
        dsn = cx_Oracle.makedsn("localhost", 1521, "xe")
        ### 서버와 접속하기(통로 만들기)
        conn = cx_Oracle.connect("sikjipsa", "dbdb", dsn)
        ### 커서 받아오기(서버에 SQL 구문과 결과를 실어나르는 역할)
        cursor = conn.cursor()
    except:
        return False
    
    return conn, cursor

### DB 접속 해제하기
def DBClose(cursor, conn):
    ### 커서 역할 끝내기(반납)
    cursor.close()
    ### 접속 끊기(통로가 사라짐)
    conn.close()

### 한건 조회시 : 튜플()을 딕셔너리()로 변환
def getFetchOne(colname, row):
    ### 컬럼명만 추출하여 리스트에 담기 (왜? dict로 키:값 형태로 쓰려고)
    col = []
    for i in colname:
        col.append(i[0].lower())
        
    ### 튜플 하나를 딕셔너리로 바꾸기
    dict_col = {}
    for i in range(0, len(row), 1):
        dict_col[col[i]] = row[i]

    return dict_col

    
### 여러건 처리 : [{}, {}] 형태로 리턴
def getFetchAll(colname, row):
    col = []
    for i in colname:
        col.append(i[0].lower())
        
    list_row = []
    for columns in row:
        dict_col = {}
        for i in range(0, len(columns), 1):
            dict_col[col[i]] = columns[i]
            
        list_row.append(dict_col)

    return list_row    
    
    
def getMemberList():
        
    conn, cursor = getDBConn_Cursor()
    
    sql = """
        Select mem_id, mem_pass, mem_name, mem_add1, mem_mail, mem_delete
        From member
    """
    cursor.execute(sql)
    rows = cursor.fetchall()
    
    ### 컬럼명 조회하기
    colname = cursor.description
    
    list_row = getFetchAll(colname, rows)

    DBClose(cursor, conn)
    
    return list_row


### 회원정보 조회하기 : 한 건 조회하기
def getMember(p_id):

    conn, cursor = getDBConn_Cursor()

    sql = """
        Select * From member
        Where mem_id =: mem_id
    """

    cursor.execute(sql, mem_id = p_id)
    row = cursor.fetchone()

    ### 조회결과가 있으면 바로 리턴(로그인 페이지로 가게끔해야함)
    if row == None :
        DBClose(cursor, conn)
        ### 실패 여부 저장 (결과값은 무조건 dictionary로 받게해야함)
        return {"rs":"no"}
    
    ### 컬럼명 조회하기
    colname = cursor.description

    dict_col = getFetchOne(colname, row)

    DBClose(cursor, conn)

    return dict_col

def getLogin(p_id, p_pw):
    
    conn, cursor = getDBConn_Cursor()

    sql = """
        Select * From member
        Where mem_id =: mem_id
        And mem_pass =: mem_pass
    """

    cursor.execute(sql, mem_id = p_id, mem_pass = p_pw)
    row = cursor.fetchone()

    ### 조회결과가 없으면 바로 리턴
    if row == None :
        DBClose(cursor, conn)
        ### 실패 여부 저장 (결과값은 무조건 dictionary로 받게해야함)
        return {"rs":"no"}

    ### 컬럼명 조회하기
    colname = cursor.description

    ### {} 형태로 변환
    dict_col = getFetchOne(colname, row)

    ### 성공 여부 저장
    dict_col['rs'] = "yes"

    ### DB연결 해제하기
    DBClose(cursor, conn)

    return dict_col


def registerMember(p_id, p_name, p_email, p_pass, p_add1):
    conn, cursor = getDBConn_Cursor()

    sql = """
    Insert into member (mem_id, mem_pass, mem_name, mem_add1, mem_mail)
    Values (:mem_id, :mem_pass, :mem_name, :mem_add1, :mem_mail)
    """

    cursor.execute(sql, mem_id = p_id, mem_pass = p_pass, mem_name = p_name, mem_mail = p_email, mem_add1 = p_add1)
    conn.commit()
    DBClose(cursor, conn)


def getMemberChk(p_id):

    conn, cursor = getDBConn_Cursor()

    sql = """
        Select * From member
        Where mem_id =: mem_id
    """

    cursor.execute(sql, mem_id = p_id)
    row = cursor.fetchone()

    ### 조회결과가 없으면 바로 리턴(로그인 페이지로 가게끔해야함)
    if row == None :
        DBClose(cursor, conn)
        ### 실패 여부 저장 (결과값은 무조건 dictionary로 받게해야함)
        return {"rs":"no"}
    
    ### 컬럼명 조회하기
    colname = cursor.description

    dict_col = {"rs":"yes"}
    DBClose(cursor, conn)
    return dict_col



def modifyPWD(p_id, new_pw):
    conn, cursor = getDBConn_Cursor()
    
    sql = """
        Update member Set mem_pass =: mem_pass
        Where mem_id =: mem_id
    """
    cursor.execute(sql, mem_pass = new_pw, mem_id = p_id)
    conn.commit()
    DBClose(cursor, conn)
    
def modifyMail(p_id, new_mail):
    conn, cursor = getDBConn_Cursor()
    
    sql = """
        Update member Set mem_mail =: mem_mail
        Where mem_id =: mem_id
    """
    cursor.execute(sql, mem_mail = new_mail, mem_id = p_id)
    conn.commit()
    DBClose(cursor, conn)
    
def modifyAddr(p_id, new_addr):
    conn, cursor = getDBConn_Cursor()
    
    sql = """
        Update member Set mem_add1 =: mem_add1
        Where mem_id =: mem_id
    """
    cursor.execute(sql, mem_add1 = new_addr, mem_id = p_id)
    conn.commit()
    DBClose(cursor, conn)
    
def deleteUser(p_id):
    conn, cursor = getDBConn_Cursor()
    
    sql = """
        Delete From member Where mem_id =: mem_id
    """
    cursor.execute(sql, mem_id = p_id)
    conn.commit()
    DBClose(cursor, conn)