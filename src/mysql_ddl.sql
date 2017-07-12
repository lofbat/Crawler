drop table knowledge;
drop table knowledge_sub;
drop table joke;
drop table chat_log;

create table `knowledge`(
	`id` int not null primary key comment '������ʶ',
	`question` varchar(2000) not null comment '����',
	`answer` text(8000) not null comment '��',
	`category` int not null comment '֪ʶ�����1:��ͨ�Ի� 2:Ц�� 3:�����ģ�'
) comment='�ʴ�֪ʶ��';
insert into knowledge values(1 , '�Ҳ�����,������,���ﷳ', '', 1);
insert into knowledge values(2 , '����,����,�ٺ�,�Ǻ�', '', 1);
insert into knowledge values(3 , '��֪������࣬�ô���', '', 1);
insert into knowledge values(4, '���ҽ���Ц��', '', 2);
insert into knowledge values(5 , '����', '�����ĵ����ˣ�', 3);
insert into knowledge values(6 , '����һ��', '�����ٸ���������', 3);
insert into knowledge values(7, '������', '����ָʲô�أ�', 3);
insert into knowledge values(8 , 'Hi,Hello,��,���', '��ã��ܸ�����ʶ�㡣', 1);
insert into knowledge values(9 , '�������/�ϰ�/��������˭', '���Ǹ���Ĳ��Ժ�Ŷ', 1);
insert into knowledge values(10 , '�������˧��', '���аɣ����һ�����ôһ��㡣', 1);
insert into knowledge values(11 , '���ڸ�ʲô��', '����ר�ĺ������찡', 1);
insert into knowledge values(12 , '��ϲ����', '��ֻϲ�����档', 1);
insert into knowledge values(13 , '�й����׶�����', '�й����׶��Ǳ�����', 1);
insert into knowledge values(14 , '������Ҫ�ϰ���', '�úù���Ŷ~', 1);
insert into knowledge values(15 , '�Һö�', '�ǿ�Է�ȥ��', 1);
insert into knowledge values(16 , 'ʲô���Ҹ�', '�Ҹ���һ�ָо���', 1);
insert into knowledge values(17 , '���ǻ�������', '�ǰ��������ܵ�����Ŷ~', 1);
insert into knowledge values(18 , '��,��', '��ô�ˣ�̾ʲô���أ�', 1);

create table `knowledge_sub`(
	`id` int not null auto_increment primary key comment '������ʶ',
	`pid` int not null comment '��knowledge���е�id���Ӧ',
	`answer` text(8000) not null comment '��'
) comment='�ʴ�֪ʶ�ӱ�';
insert into knowledge_sub(pid, answer) values(1, '��������Ϳ�����');
insert into knowledge_sub(pid, answer) values(1, '��ʲô�����ĵ�˵������');
insert into knowledge_sub(pid, answer) values(1, '���������������');
insert into knowledge_sub(pid, answer) values(1, '�������ˣ��һ�һֱ������ġ�');
insert into knowledge_sub(pid, answer) values(2, '������������鲻��');
insert into knowledge_sub(pid, answer) values(2, '�ٺ�');
insert into knowledge_sub(pid, answer) values(2, '����');
insert into knowledge_sub(pid, answer) values(2, '����');
insert into knowledge_sub(pid, answer) values(2, 'ʲô����ô��Ц��');
insert into knowledge_sub(pid, answer) values(3, '����Ϊ��˵�ĺ��е���');
insert into knowledge_sub(pid, answer) values(3, '��Ϊ���Ǵ����Ļ�����ѽ');
insert into knowledge_sub(pid, answer) values(3, '���������ģ�û�취��������');
insert into knowledge_sub(pid, answer) values(3, '�һ�Ŭ����ø��Ӵ�����');

create table `joke`(
	`joke_id` int(8) primary key not null auto_increment comment 'Ц��id',
	`joke_content` text(8000) comment 'Ц������'
) comment='Ц����';
insert into joke(joke_content) values('һ��һ���ƺ�򳵻ؼң�������һ��110Ѳ�������������µ�����������ÿ����һ��һ��Ҳû��Ҫд��ô���');
insert into joke(joke_content) values('������������̫̫������վ����վ���ʡ�������һվ����һ����������ɡͱ˾��������չ�������𣿡������ǣ������Źǣ���');
insert into joke(joke_content) values('��������ʦ������������!�� �������һ���Ӵ����ص�����yeah!�� ��ʦ����������Ϊʲô��˵���������� ����˵�����Ǹ�����ǡ���������');
insert into joke(joke_content) values('���챻��˾��Ůͬ��Ī��������һ�ڣ�������ֵ�ˬ��������֪���˼������Ļ���ð�գ��ǽ���һ����˾���ģ����ģ�');
insert into joke(joke_content) values('�и��˵�һ���ڼ�������������������˼�������Ա���һ����������������������������ֻ�ú���������Ҳ�ǡ���');

create table `chat_log`(
	`id` int not null auto_increment primary key comment '������ʶ',
	`open_id` varchar(30) not null comment '�û���OpenID',
	`create_time` varchar(20) not null comment '��Ϣ����ʱ��',
	`req_msg` varchar(2000) not null comment '�û����е���Ϣ',
	`resp_msg` varchar(2000) not null comment '�����˺Żظ�����Ϣ',
	`chat_category` int comment '��������0:δ֪ 1:��ͨ�Ի� 2:Ц�� 3:�����ģ�'
) comment='�����¼��';

create table `question_type`(
	`typeid` int(11) not null primary key comment '�������ͱ��',
	`type` text not null comment '��������'
) comment='�������ͱ�';
insert into question_type values(1,'������');
insert into question_type values(2,'ԭ����');
insert into question_type values(3,'�о���');
insert into question_type values(4,'������');
insert into question_type values(5,'������');

create table `knowledge_point`(
	`knowid` int(11) not null primary key comment '֪ʶ���ͱ��',
	`knowpoint` text not null comment '֪ʶ������'
) comment='֪ʶ�����ͱ�';
insert into knowledge_point values(1,'��ҵ����');
insert into knowledge_point values(2,'���̹���');
insert into knowledge_point values(3,'�洢����');
insert into knowledge_point values(4,'�ļ�����');
insert into knowledge_point values(5,'�豸����');
insert into knowledge_point values(6,'ϵͳ����');

create table `question_answer`(
	`questionid` int(11) not null primary key auto_increment comment '������',
	`question` varchar(2000) not null comment '����',
	`answer` text(8000) not null comment '��', 
	`typeid` int(11) not null comment '�������ͱ��',
	`knowid` int(11) not null comment '֪ʶ���ͱ��'
) comment='����ϵͳ�����';
insert into question_answer(question,answer,typeid,knowid) values('����ϵͳ��ʲô','�ǲ���ϵͳ',1,6);
insert into question_answer(question,answer,typeid,knowid) values('Ϊʲô�ܴ洢','�����ܴ洢',2,3);
insert into question_answer(question,answer,typeid,knowid) values('��ҵ���ļ�����','��ҵ�кü�����',3,1);
insert into question_answer(question,answer,typeid,knowid) values('��ô�����߳�','��ô����',4,2);