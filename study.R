
# ggplot2 ���̺귯�� ����
library(ggplot2)

# mpg �����ͼ� �ҷ�����
data(mpg)

# �ڵ��� ����� ���õ� �׷��� �׸���
ggplot(mpg, aes(x = class, y = hwy)) + geom_boxplot() +
labs(title = "�ڵ��� ���� �׷���", x = "�ڵ��� ����", y = "���ӵ��� ����")

# cowsay ���̺귯�� �Ẹ��
library(cowsay)
say("HELLO WORLD", by="cat")
say("HELLO WORLD", by="snow")

# ����ð� �ҷ�����
Sys.time() 


total <- 5050
total
print("total")
cat("�հ� :", total)


# ���� ����
foo <- c(1,2,3,4,5,6,7)

# ��հ� 
mean(foo)

# 1���� 100������ ���� ����
v1 <- 1:100

# ������ ������ ���ڷ� �̷���� ���� ����
v3 <- seq(1,101,3)

#�ݺ��� ���ڷ� �̷���� ����
v5 <- rep(1:5, times=5) # 1,2,3,4,5 3�� �ݺ�
v6 <- rep(c(1,5,9), times=5)
v7 <- rep(1:5, each=5) # each �ɼ��� �ָ� ���� 5ȸ �ݺ�


# names �Լ� : �� ��ü�� �̸� �ο�
absent <- c(1,2,3,4,5)
# ���� �̸��� ����
names(absent) <- c('Mon','TUe', 'Wed', 'Thu', 'Fri')
absent

# ���ʹ� �迭�� �ٸ��� �ε����� 1���� ���۵�
absent[1]

# 2��° �ε��� �� ȣ��
absent[2]
# name ������ ����� �� �� �ִ�.
absent["Thu"]


absent[1] <- 100
# 1,2��° �ε����� 100, 200 �ֱ�
absent[c(1,2)] <- c(100,200) 
absent


d <- c(1,4,3,6,8)
d[c(1,3,5)]
d[1:3]
d[-2] # �ε��� 2�� �����ϰ�
d[-c(3:5)] # ����°���� 5��°���� ����

# paste �Լ� : ���ڿ��� ���ڿ��� �����ϰ� sep ���� �����Ͽ� ���
# sep ���鵵 ����
str <- paste('good', 'mornig', 'every one', sep='/')
str

# 1�������� 12���� ���ڿ� �� �ٿ��� ����ϱ�
a<- 1:12
b<- '��'
c<- paste(a,b, sep ='')
c<- paste(1:12, '��', sep='')
c