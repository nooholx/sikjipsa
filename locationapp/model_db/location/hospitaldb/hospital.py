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
    
    
def getHospitalList(city):
        
    conn, cursor = getDBConn_Cursor()
    
    sql = """
        Select hospital_name, hospital_place, hospital_phone
        From hospital_loc"""
    
    if city != "":
        sql+="""
            Where substr(hospital_place,0, 2) in ({})
        """.format(city)
        
    cursor.execute(sql)
        
    rows = cursor.fetchall()
    
    ### 컬럼명 조회하기
    colname = cursor.description
    
    list_row = getFetchAll(colname, rows)

    DBClose(cursor, conn)
    
    return list_row
