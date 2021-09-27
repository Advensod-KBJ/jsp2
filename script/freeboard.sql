-- �����Խ��� : ���̺� 2�� (���α�����, �������)

CREATE TABLE FREEBOARD(
	IDX int NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(30) NOT NULL,						-- �ۼ���
	PASSWORD VARCHAR(10) NOT NULL,					-- �� ��й�ȣ
	SUBJECT VARCHAR(40) NOT NULL,					-- �� ����
	CONTENT VARCHAR(2000) NOT NULL,					-- ����
	READCOUNT INT DEFAULT 0,						-- ��ȸ��
	WDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,		-- ������ ���� ��¥/�ð�
	IP VARCHAR(15) DEFAULT '127.0.0.1',				-- ������ IP
	COMMENTCOUNT SMALLINT DEFAULT 0,				-- ��� ����
	PRIMARY KEY(IDX)
);

INSERT INTO FREEBOARD (NAME, PASSWORD, SUBJECT, CONTENT,IP)
VALUES('honey','1111','���� ~~','���� �ݰ���','192,168,17,3');
INSERT INTO FREEBOARD (NAME, PASSWORD, SUBJECT, CONTENT,IP)
VALUES('�糪','1111','welcome my home ~~','���� �ݰ��� ���','192.168.22.3');
INSERT INTO FREEBOARD (NAME, PASSWORD, SUBJECT, CONTENT,IP)
VALUES('����','1111','�¹��� ~~','�߰� �Ǻ�','19.168.23.3');
INSERT INTO FREEBOARD (NAME, PASSWORD, SUBJECT, CONTENT,IP)
VALUES('nayeon','1111','���� ~~','���� �ݰ���2','192.168.24.3');
INSERT INTO FREEBOARD (NAME, PASSWORD, SUBJECT, CONTENT,IP)
VALUES('����ȣ','1111','��ο�~~','��� ����','192.168.25.4');
INSERT INTO FREEBOARD (NAME, PASSWORD, SUBJECT, CONTENT,IP)
VALUES('������','1111','���� ~~','��Ϸ� ������','192.168.26.7');

SELECT * FROM FREEBOARD;

-- mysql limit Ű���� : limit ��ȣ, ����
-- mysql, oracle select ����� ���� ���࿡ ������� ��ȣ�� �ο��ϴ� �÷��� �������
SELECT * FROM FREEBOARD ORDER BY IDX DESC;
SELECT * FROM FREEBOARD ORDER BY IDX DESC LIMIT 0, 15;	-- 1 ������
SELECT * FROM FREEBOARD ORDER BY IDX DESC LIMIT 15, 15;	-- 2 ������
SELECT * FROM FREEBOARD ORDER BY IDX DESC LIMIT 30, 15;	-- 3 ������
-- ���� : n=10 ������ ��? (n-1)*15
SELECT * FROM FREEBOARD ORDER BY IDX DESC LIMIT 135, 15;	-- 10 ������
COMMIT;
-- �� ���� : subject, content ����. idx �÷��� ����
UPDATE freeboard SET subject = '�³���~', content='���ڰ� ���Ϻ���' WHERE idx=154;

-- ��ȸ�� ���� : ���� ������(url ��û �߻�) count + 1
UPDATE freeboard SET READCOUNT = READCOUNT + 1 WHERE idx = 154;

-- �� ���� : �� ��й�ȣ 1) ���� �� 2) ���� ��
DELETE FROM FREEBOARD WHERE IDX=151 AND PASSWORD ='0000';
DELETE FROM FREEBOARD WHERE IDX=151 AND PASSWORD IS NULL;
