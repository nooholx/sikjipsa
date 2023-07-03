import cx_Oracle

### DB연결, 접속, 커서받아오기
# - 리턴값 : 커서
def getDBConn_Cursor() :
    try :
        ### 서버 찾아가기
        dsn = cx_Oracle.makedsn("localhost", 1522, "xe")
        ### 서버와 접속하기(통로 만들기)
        conn = cx_Oracle.connect("sikjipsa", "dbdb", dsn)
        ### 커서 받아오기(서버에 SQL구문과 결과를 실어나르는 역할)
        cursor = conn.cursor()
    except :
        return False
    
    return conn, cursor

### DB 접속 해제하기
def DBClose(cursor, conn) :
    ### 커서 역할 끝내기(반납)        
    cursor.close()
    ### 접속 끊기(통로가 사라짐)
    conn.close()


### 여러건 처리 : [{}, {}] 형태로 리턴
def getFetchAll(colname, row):
    ### 컬럼명만 추출하여 리스트에 담기
    col = []
    for c in colname :
        col.append(c[0].lower())
    
    ### [{}] 형태로 변환
    list_row = []
    for  columns in row :
        dict_col = {}
        for i in range(0, len(columns), 1) :
            dict_col[col[i]] = columns[i]
            # print("key[{}] / value[{}]".format(col[i], columns[i]))
        list_row.append(dict_col) 
    
    return list_row

### 한건 조회시 : 튜플()을 딕셔너리{}로 변환
def getFetchOne(colname, row):
    ### 컬럼명만 추출하여 리스트에 담기
    col = []
    for c in colname :
        col.append(c[0].lower())
    
    ### 튜플을 딕셔너리로 변환하기
    dict_col = {}
    for i in range(0, len(row), 1) :
        dict_col[col[i]] = row[i]
    
    return dict_col


### 파일정보 조회하기 : 여러건 조회하기
def getFileManagerList() :
    ### DB접속하기
    conn, cursor = getDBConn_Cursor()
    
    sql = """
            Select *
            From file_manager
            Order By file_id Asc
    """.format('a')
    
    ### 구문을 서버에게 보내서 요청하고, 결과 받아오기
    cursor.execute(sql)
    ### 받아온 결과를 달라고 요청
    row = cursor.fetchall()
        
    ### 컬럼명 조회하기
    colname = cursor.description  
    ### [{}] 형태로 변환하기  
    list_row = getFetchAll(colname, row)    
    
    ### DB연결 해제하기
    DBClose(cursor, conn)
    
    return list_row


### 파일정보 조회하기 : 한건 조회하기
def getFileManager(p_id) :
    ### DB접속하기
    conn, cursor = getDBConn_Cursor()
    
    sql = """
            Select * From file_manager
            where file_id =: file_id 
    """
    cursor.execute(sql, file_id=p_id)
    rows = cursor.fetchone()
        
    ### 컬럼명 조회하기
    colname = cursor.description  
    
    dict_col = getFetchOne(colname, rows)
    
    ### DB연결 해제하기
    DBClose(cursor, conn)
    
    return dict_col