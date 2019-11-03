# csv_table_style_shellscript
テーブルスタイルでCSVファイルを表示する。Display CSV file in table style.

## 使用方法
引数にCSVファイルを与えて実行します。  
※CSVは半角のみ対応。全角文字が入ると表示が崩れます。

## 使用例

```
[hoge@local: ~]$ sh csv_parse_sqldisplay.sh test_data.csv
+----+-------------+------------------+---------------+----------------------+--------------------+
| id | postal_code | prefectures_code |  phone_number |                email |          date_time |
+----+-------------+------------------+---------------+----------------------+--------------------+
|  1 |    855-0151 |               18 | 080-3454-3698 |   OK_LI5@example.com | 2012/5/14 23:24:45 |
|  2 |    884-9283 |               14 | 080-5785-8416 |     w4dIMm6@test.com |   1976/9/9 9:12:50 |
|  3 |    105-8176 |               08 | 080-6521-4194 |       i7z6FM@test.jp |  2013/6/17 0:42:10 |
|  4 |    946-3408 |               11 | 090-0974-2227 |   GmeWUoL@sample.org |  2006/6/4 18:54:44 |
|  5 |    540-4290 |               22 | 090-9204-0243 |    PiLueGZht@test.jp | 2001/7/14 15:59:58 |
|  6 |    608-6516 |               14 | 080-2702-9315 | T1siLNEbc@example.jp | 1980/7/14 18:36:40 |
|  7 |    077-4354 |               31 | 090-6172-4143 |      mLgwOL@test.com | 2008/5/12 20:48:12 |
|  8 |    139-6143 |               04 | 090-5286-6431 |    jMzp9O21@test.net | 1993/2/20 23:46:50 |
|  9 |    098-3460 |               41 | 080-5108-5681 |     bMnYW@sample.com | 1992/6/13 17:52:03 |
| 10 |    354-5744 |               02 | 090-8018-7223 |   Ipcjl@sample.co.jp |  2016/5/8 20:26:07 |
+----+-------------+------------------+---------------+----------------------+--------------------+
```
