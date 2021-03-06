USE [master]
GO
/****** Object:  Database [Assignment_PRJ]    Script Date: 24/03/2022 11:28:28 SA ******/
CREATE DATABASE [Assignment_PRJ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment_PRJ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Assignment_PRJ.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Assignment_PRJ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Assignment_PRJ_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Assignment_PRJ] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment_PRJ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment_PRJ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment_PRJ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment_PRJ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment_PRJ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET RECOVERY FULL 
GO
ALTER DATABASE [Assignment_PRJ] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment_PRJ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment_PRJ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment_PRJ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment_PRJ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Assignment_PRJ] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Assignment_PRJ', N'ON'
GO
USE [Assignment_PRJ]
GO
/****** Object:  Table [dbo].[account]    Script Date: 24/03/2022 11:28:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[idACC] [int] IDENTITY(1,1) NOT NULL,
	[user] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[isAdmin] [int] NULL,
	[isUser] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idACC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[category]    Script Date: 24/03/2022 11:28:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[idCategory] [int] IDENTITY(1,1) NOT NULL,
	[nameCa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[comment]    Script Date: 24/03/2022 11:28:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[idComment] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[idACC] [int] NULL,
	[idNews] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[news]    Script Date: 24/03/2022 11:28:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[idNews] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NULL,
	[shortDescription] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[idACC] [int] NULL,
	[idCategory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idNews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([idACC], [user], [pass], [isAdmin], [isUser]) VALUES (1, N'admin', N'admin', 1, 0)
INSERT [dbo].[account] ([idACC], [user], [pass], [isAdmin], [isUser]) VALUES (2, N'mod', N'mod', 1, 0)
INSERT [dbo].[account] ([idACC], [user], [pass], [isAdmin], [isUser]) VALUES (3, N'quynh', N'quynh', 0, 1)
INSERT [dbo].[account] ([idACC], [user], [pass], [isAdmin], [isUser]) VALUES (4, N'nam', N'nam', 0, 1)
INSERT [dbo].[account] ([idACC], [user], [pass], [isAdmin], [isUser]) VALUES (5, N'duc', N'duc', 4, 0)
SET IDENTITY_INSERT [dbo].[account] OFF
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([idCategory], [nameCa]) VALUES (1, N'Tin Tức Nổi Bật')
INSERT [dbo].[category] ([idCategory], [nameCa]) VALUES (2, N'Tin Tức Mới Nhất')
INSERT [dbo].[category] ([idCategory], [nameCa]) VALUES (3, N'Tin Tức - Hoà Lạc')
INSERT [dbo].[category] ([idCategory], [nameCa]) VALUES (4, N'Tin Tức Kiến Trúc - Xây Dựng')
INSERT [dbo].[category] ([idCategory], [nameCa]) VALUES (5, N'Tin Tức Bất Động Sản')
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([idComment], [content], [idACC], [idNews]) VALUES (1, N'Bài Viết Này Hay Quá ', 1, 13)
INSERT [dbo].[comment] ([idComment], [content], [idACC], [idNews]) VALUES (7, N'Bài Viết Này Hay Quá', 3, 13)
INSERT [dbo].[comment] ([idComment], [content], [idACC], [idNews]) VALUES (8, N'Bài viết thật bổ ích', 1, 13)
SET IDENTITY_INSERT [dbo].[comment] OFF
SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (13, N'Khu công nghệ cao Hòa Lạc sẽ trở thành đô thị KH&CN thông minh', N'https://static.wixstatic.com/media/0caa0e_5da5fa6d366a4ba0bbcf62490063c7b4~mv2.png/v1/fill/w_740,h_416,al_c,q_95/0caa0e_5da5fa6d366a4ba0bbcf62490063c7b4~mv2.webp', N'Đề án phát triển Khu công nghệ cao Hòa Lạc đến năm 2030, tầm nhìn đến năm 2045 trình Chính phủ trong năm 2022. Nơi đây sẽ trở thành đô thị KH&CN mở và thông minh” - Ông Trần Đắc Trung, Phó trưởng Ban Quản lý Khu công nghệ cao Hòa Lạc cho biết.', N'a', 1, 1)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (15, N'Dự kiến đến 2025, Đô thị Hòa Lạc chào đón 15.000 sinh viên ĐHQGHN', N'https://static.wixstatic.com/media/4df281_6eaf17eaa9e144b9be80da16b4cc0c66~mv2.jpg/v1/fill/w_740,h_356,al_c,q_90/4df281_6eaf17eaa9e144b9be80da16b4cc0c66~mv2.webp', N'Đến năm 2025, di dời một số cơ quan, đơn vị và đưa 15.000 sinh viên (chiếm 30%) trên tổng số sinh viên lên học tập tại cơ sở mới ở Hòa Lạc, tạo động lực cho phát triển của Đại học Quốc gia Hà Nội.', N'Theo Chương trình số 149-CTr/ĐU của Đảng ủy Đại học Quốc gia Hà Nội (ĐHQGHN), đến năm 2025, 100% hoạt động điều hành của cơ quan ĐHQGHN chuyển lên Hòa Lạc.


Hoàn thành giai đoạn 1 của hai dự án đầu tư xây dựng trường ĐH Công nghệ đáp ứng quy mô đào tạo cho 5.000 sinh viên và trường ĐH Khoa học Tự nhiên. Đồng thời hoàn thành giai đoạn 1 dự án đầu tư xây dựng ký túc xá sinh viên của ĐHQGHN đáp ứng quy mô nhà ở cho 18.000 sinh viên; hoàn thành đầu tư xây dựng 50% khối lượng xây lắp dự án trường ĐH Việt Nhật bằng nguồn vốn vay ODA của Nhật Bản.', 1, 1)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (18, N'Trường mầm non có thiết kế tầng trệt hứng nước khi trời mưa, tạo thành sân chơi cho trẻ em', N'https://static.wixstatic.com/media/0caa0e_7b3fc5dca420407197d85d43a3efaa2f~mv2.png/v1/fill/w_740,h_530,al_c,q_95/0caa0e_7b3fc5dca420407197d85d43a3efaa2f~mv2.webp', N'Trường mầm non có thiết kế tầng trệt hứng nước khi trời mưa, tạo thành sân chơi cho trẻ em', N'
Thiết kế tầng trệt hứng nước mưa có thể tạo thành sân trượt tuyết vào mùa đông

Không chỉ có tác dụng chứa nước mưa, khoảng sân của tầng trệt ngôi trường còn có thể biến thành một sân trượt tuyết trong nhà khi mùa đông tới, nhờ việc hứng tuyết rơi xuống, giống với cách mà nó chứa nước mưa. Trường mầm non Dai-Ichi Yochien được thiết kế bởi Youji No Shiro, một công ty kiến trúc, nội thất chuyên thực hiện các công trình dành cho trẻ em.', 1, 4)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (19, N'Vingroup xây nhà máy sản xuất vaccine ở Hoà Lạc', N'https://static.wixstatic.com/media/0caa0e_5da5fa6d366a4ba0bbcf62490063c7b4~mv2.png/v1/fill/w_740,h_416,al_c,q_95/0caa0e_5da5fa6d366a4ba0bbcf62490063c7b4~mv2.webp', N'Nhà máy sản xuất vaccine của Vingroup vừa được duyệt vào danh mục dự án trọng điểm cấp bách, được hoạt động trong thời gian thực hiện Chỉ thị 17.', N'UBND TP Hà Nội vừa phê duyệt danh mục các dự án trọng điểm cấp bách được hoạt động trong thời gian thực hiện giãn cách xã hội. Trong đó có Dự án Nhà máy sản xuất vaccine được xây dựng tại Khu công nghệ cao Hòa Lạc, huyện Thạch Thất, Hà Nội, do Công ty cổ phần Nghiên cứu và Sản xuất Vinsmart làm chủ đầu tư.', 1, 1)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (20, N'Những trường đại học nào sẽ chuyển đến Hoà Lạc?', N'https://static.wixstatic.com/media/0caa0e_6f45faaf06904e23bae5f9dbe2a73926~mv2.png/v1/fill/w_740,h_416,al_c,q_95/0caa0e_6f45faaf06904e23bae5f9dbe2a73926~mv2.webp', N'Sẽ có 35 trường học và trung tâm nghiên cứu chuyển đến Hoà Lạc trong tương lai.   Hiện tại ở Hoà Lạc có đại học FPT, thông số tuyển sinh năm 2021 là hơn 11 nghìn sinh viên. ', N'Ngoài ra là những công trình sắp xây dựng xong, đi vào hoàn thiện như Viện Kiểm Toán, mức độ xây dựng 60-70%, đã đến giai đoạn xây dựng lắp đặt thiết bị và làm cảnh quan. Viện Khoa học công nghệ Việt Nam & Hàn Quốc, mức độ hoàn thiện gần 100%, đang chờ đi vào hoạt động.


Đại học Khoa học tự nhiên thuộc Đại học Quốc gia Hà Nội: Đã xây dựng xong chỉ chờ sinh viên đến học.
Ngày 27/9/2021, Dự án xây dựng Trường USTH – Trường đại học Khoa học và Công nghệ Hà Nội, đã chính thức được khởi công tại Khu Giáo dục Đào tạo, Khu Công nghệ cao Hòa Lạc.

Đại học Quốc Gia Hà Nội đưa sinh viên lên vào năm 2022.

Theo thông tin từ báo Tiền Phong, ngày 21/10/2021. Tại buổi làm việc về kế hoạch đưa sinh viên Đại học Quốc gia Hà Nội (ĐHQGHN) lên học tập tại cơ sở Hòa Lạc, ông Lê Quân thông tin ĐH này ưu tiên cho nhóm sinh viên tuyển sinh mới vào năm 2022 ở một số lĩnh vực đào tạo về kỹ thuật công nghệ, khoa học xã hội và kinh tế, luật… theo mô hình A+B có sự phối hợp đào tạo liên ngành, liên đơn vị sẽ học tập tập trung tại cơ sở Hòa Lạc. Những năm tiếp theo sẽ căn cứ vào diện tích xây mới thực tế để tăng quy mô đào tạo tại Hòa Lạc nhằm giảm sự quá tải tại nội thành Hà Nội.

Giám đốc Lê Quân nhấn mạnh, tổ hợp các tòa nhà HT1, HT2 thuộc zone 4 của trường ĐH Khoa học Tự nhiên, khu Ký túc xá số 4 đã sẵn sàng đáp ứng để tiếp nhận theo quy mô thiết kế là gần 4.000 sinh viên học tập và sinh sống với môi trường đại học hiện đại, tiên tiến theo tiêu chuẩn quốc tế.

Ảnh họp của buổi ông Lê Quân này này


Ông Lê Quân đề nghị, thủ trưởng các đơn vị, lãnh đạo các phòng ban liên quan cần phối hợp chặt chẽ với nhau để triển khai công tác nhanh, hiệu quả và chất lượng. Không bàn khó, không bàn lùi, ĐHQGHN sẽ tiến hành thành lập Ban chỉ đạo và Tổ công tác triển khai nhiệm vụ cụ thể.

Đối với chương trình đào tạo, Ban Giám đốc yêu cầu Ban Đào tạo làm đầu mối để thống nhất tên chương trình đào tạo nhưng cần dựa vào nguyên tắc mô hình đào tạo A+B. Các đơn vị liên quan phối hợp với Ban Đào tạo để chuẩn bị cho kỳ tuyển sinh năm 2022. Các chương trình đào tạo cần thiết kế theo hướng giáo dục khai phóng, sinh viên có thể được tùy chỉnh lựa chọn nhiều ngành học; chương trình đào tạo cũng phải gắn với chuyển đổi số nhằm thực hiện 5 nhiệm vụ mục tiêu của năm học mà ĐHQGHN đã đặt ra.

', 1, 3)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (21, N'Hà Nội muốn đưa Hòa Lạc lên thành phố, những dự án hạ tầng nào đang tạo ''cú hích'' cho nơi đây?', N'https://static.wixstatic.com/media/4df281_9778e39e41df4de9a279c270508f94be~mv2.png/v1/fill/w_740,h_856,al_c,q_95/4df281_9778e39e41df4de9a279c270508f94be~mv2.webp', N'Cùng với ba huyện Đông Anh, Mê Linh, Sóc Sơn, TP Hà Nội cũng đặt mục tiêu đưa Hòa Lạc lên thành phố mới của khu vực phía Tây nhằm hoàn thiện mô hình “Thành phố trong Thành phố”. Với sự xuất hiện của nhiều dự án hạ tầng đã tạo nên "cú hích" trong triển vọng phát triển kinh tế - xã hội cũng như thu hút nhà đầu tư lớn tại khu vực này.', N'Sở hữu quỹ đất lớn lên đến 17.000 ha, Hòa Lạc được đặt mục tiêu trở thành đô thị vệ tinh lớn nhất trong 5 đô thị được quy hoạch xung quanh trung tâm Hà Nội. Ngoài ra, theo quy hoạch xây dựng Thủ đô đến năm 2030, tầm nhìn đến 2050, Hòa Lạc cũng nằm trong số các địa phương được đặt mục tiêu lên thành phố mới, cùng với ba huyện phía Bắc gồm Đông Anh, Mê Linh, Sóc Sơn.
Việc xây dựng đồng bộ hệ thống giao thông, hạ tầng cơ sở được kỳ vọng giúp Hòa Lạc đáp ứng các tiêu chí phát triển đô thị thông minh.


Tiêu biểu như quy hoạch mở rộng tuyến quốc lộ 21, tổng chiều dài là 29,3 km, tốc độ thiết kế 80 km/h, sẽ đưa vào khai thác từ năm 2023, cùng việc bố trí các tuyến xe buýt đi lại giữa trung tâm thành phố và Hòa Lạc.


Quy hoạch đến 2030 và tầm nhìn 2050 cũng sẽ có nhiều tuyến đường nối trung tâm với đô thị vệ tinh như trục Tây Thăng Long, trục Hồ Tây - Ba Vì (đoạn Vành đai 4 đến Hòa Lạc)… Các tuyến đường sắt sẽ có các tuyến Hòa Lạc - Văn Cao, Hòa Lạc - Sơn Tây, Hòa Lạc -Xuân Mai. ', 1, 3)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (22, N'Xu hướng "an cư lạc nghiệp" tại khu CNC Hòa Lạc của làn sóng trí thức.', N'https://static.wixstatic.com/media/0caa0e_79fe8af655de4e94b26a8e89adf3b28c~mv2.png/v1/fill/w_740,h_488,al_c,q_95/0caa0e_79fe8af655de4e94b26a8e89adf3b28c~mv2.webp', N'Khu công nghệ cao Hòa Lạc, dự tính đến năm 2020 sẽ là nơi trú ngụ của 229.000 nhân tài được thu hút đến đây sinh sống và làm việc.  Khu đô thị vệ tinh Hòa Lạc đang có những chuyển động tích cực và mạnh mẽ trong những năm gần đây, với rất nhiều sự tham gia đầu tư của nhiều tập đoàn kinh tế công nghệ tiên tiến trên thế giới. Với sự phát triển này, Hòa Lạc sẽ chính là nơi thu hút nguồn nhân tài lớn của đất nước, nhất là tại Thủ Đô Hà Nội, chuyển về sinh sống và làm việc tại vùng đất được cho là có tiềm năng trở thành khu đô thị cực kỳ thông minh – tiện nghi – xanh sạch và đáng sống trong tương lai gần.', N'“Làng trí thức cần cung cấp các dịch vụ quan trọng về nhà ở, các tiện ích hạ tầng văn hóa - xã hội (ví dụ như y tế, giáo dục, giải trí), hỗ trợ các hoạt động nghiên cứu và sản xuất cho các cư dân của khu CNC (và cả xung quanh). Cần phải tạo ra sự khác biệt với một môi trường sống và làm việc tối ưu, nơi các cư dân có ảnh hưởng lẫn nhau, tôn trọng và đảm bảo tính bền vững của hệ sinh thái, xây dựng những giá trị nhân văn, sáng tạo và thân thiện với công nghệ”. Các cư dân tương lai tại Hòa Lạc chắc chắn sẽ đều là các chuyên gia trong và quốc tế, các kỹ sư, người lao động được đào tạo bài bản và có tay nghề trình độ cao, nên nhu cầu nhà ở cũng có tiêu chuẩn cao hơn ở các khu công nghiệp. Họ được thu hút về đây với không gian thiên nhiên ưu đãi, môi trường làm việc chuẩn quốc tế, tương lai phát triển rõ ràng và đây chắc chắn là một cùng đất phù hợp cho những người trí thức xây dựng tổ ấm, xây dựng gia đình, nuôi dưỡng trẻ nhỏ và cùng nhau xây dựng một cộng đồng vững mạnh.', 1, 3)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (23, N'Xu hướng dịch chuyển của trí thức về Khu đô thị Hoà Lạc sinh sống.', N'https://static.wixstatic.com/media/0caa0e_def8456d4a9c4979a92d06ba7fc8eaca~mv2.png/v1/fill/w_740,h_416,al_c,q_95/0caa0e_def8456d4a9c4979a92d06ba7fc8eaca~mv2.webp', N'Hòa Lạc sẽ chính là nơi thu hút nguồn nhân tài lớn của đất nước, nhất là tại Thủ Đô Hà Nội, chuyển về sinh sống và làm việc tại vùng đất được cho là có tiềm năng trở thành khu đô thị cực kỳ thông minh – tiện nghi – xanh sạch và đáng sống trong tương lai gần.  Khu đô thị vệ tinh Hòa Lạc đang có những chuyển động tích cực và mạnh mẽ trong những năm gần đây, với rất nhiều sự tham gia đầu tư của nhiều tập đoàn kinh tế công nghệ tiên tiến trên thế giới. Với sự phát triển này, Hòa Lạc sẽ chính là nơi thu hút nguồn nhân tài lớn của đất nước, nhất là tại Thủ Đô Hà Nội, chuyển về sinh sống và làm việc tại vùng đất được cho là có tiềm năng trở thành khu đô thị cực kỳ thông minh – tiện nghi – xanh sạch và đáng sống trong tương lai gần.', N'SỰ PHÁT TRIỂN CỦA KHU ĐÔ THỊ HÒA LẠC.

Khu đô thị vệ tinh Hòa Lạc được chia làm 4 phân khu chuyên biệt bao gồm: Khu công nghệ cao (CNC) Hòa Lạc; Khu Đại học quốc gia; Khu đô thị sinh thái; Khu tổ

hợp y tế. So với những phân khu còn lại, khu CNC Hòa Lạc là một phân khu quan trọng trong khu đô thị vệ tinh Hòa Lạc nói riêng và của TP. Hà Nội nói chung. Đây sẽ là nơi ươm mầm khởi nghiệp CNC và thu hút những chuyên gia hàng đầu đến sinh sống và làm việc.


Là đô thị khoa học công nghệ nơi tập trung trí tuệ tiên tiến, trung tâm đào tạo nguồn nhân lực chất lượng cao. Đồng thời là đô thị nghỉ dưỡng sinh thái, tiết kiệm năng lượng, trung tâm vùng phía Tây Hà Nội trên cơ sở gắn kết địa hình tự nhiên cùng hệ thống không gian cảnh quan Ba Vì - Đồng Mô và hệ thống sông Tích. Đến thời điểm hiện tại, đây cũng là phân khu đang có sự phát triển mạnh mẽ nhất khi hàng loạt tập đoàn lớn trong và ngoài nước đã đến đầu tư xây dựng nhà máy như Tập đoàn Hanwha Aerospace (Hàn Quốc), Trung tâm Nghiên cứu và Phát triển của Tập đoàn Nissan Techno (Nhật Bản), Tập đoàn Nidec (Nhật Bản), Trung tâm Nghiên cứu và kiểm thử DT&C (Hàn Quốc), Tập đoàn Viettel, Tập đoàn VNPT, Công ty FPT…

', 1, 3)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (24, N'Đầu tư vào Khu công nghệ cao Hoà Lạc sắp có cơ chế đặc thù, ưu đãi cao nhất', N'https://static.wixstatic.com/media/0caa0e_ac246e38e52b4edf9cdcb4e3aea68b95~mv2.png/v1/fill/w_740,h_416,al_c,q_95/0caa0e_ac246e38e52b4edf9cdcb4e3aea68b95~mv2.webp', N'Khu công nghệ cao Hòa Lạc sẽ được chính phủ ban hành cơ chế đặc thù với các chính sách ưu đãi cao nhất nhằm thu hút, khuyến khích đầu tư...', N'Phó thủ tướng Vũ Đức Đam thống nhất về chủ trương ban hành cơ chế đặc thù cho Khu công nghệ cao Hoà Lạc.

Theo đó, trên cơ sở đề nghị của Bộ Khoa học và Công nghệ, Phó thủ tướng đồng ý chủ trương ban hành cơ chế đặc thù cho Khu công nghệ cao Hòa Lạc với các chính sách ưu đãi cao nhất theo quy định của pháp luật nhằm thu hút, khuyến khích đầu tư, phát triển Khu công nghệ cao Hòa Lạc theo đúng mục tiêu đã đặt ra.
Phó thủ tướng giao Bộ Khoa h ọc và Công nghệ nghiên cứu, xác định rõ các cơ chế, chính sách đặc thù, thẩm quyền quyết định áp dụng cho Khu công nghệ cao Hòa Lạc và hình thức văn bản cho phù hợp với thẩm quyền.


Khu công nghệ cao Hòa Lạc là khu công nghệ cao đầu tiên của Việt Nam được Thủ tướng Chính phủ thành lập và phê duyệt quy hoạch tổng từ năm 1998 với mục tiêu đẩy mạnh quá trình công nghiệp hóa, hiện đại hóa nền kinh tế khu vực và cả nước.', 1, 2)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (25, N'Đô thị vệ tinh Hòa Lạc đang thay đổi như thế nào?', N'https://static.wixstatic.com/media/0caa0e_ed7f7d8b665e4a5c9e95163c88e06d5b~mv2.png/v1/fill/w_740,h_416,al_c,q_95/0caa0e_ed7f7d8b665e4a5c9e95163c88e06d5b~mv2.webp', N'Một năm trở lại đây, với sự góp mặt của nhiều tập đoàn lớn như VinGroup, Viettel, FPT, VNPT, Nidec, Nissan,…đang đầu mạnh xây dựng nhà máy tại khu công nghệ cao, kéo theo sự phát triển đô thị mạnh mẽ ở khu vực này.', N'Đô thị vệ tinh Hòa Lạc

Quy hoạch chung Thủ đô đến năm 2030 tầm nhìn 2050 được Thủ tướng phê duyệt vào năm 2008, Hà Nội có 5 đô thị vệ tinh là Hòa Lạc, Sơn Tây, Sóc Sơn, Xuân Mai, Phú Xuyên. Các đô thị vệ tinh được định hướng phát triển hoàn chỉnh đồng bộ từ hạ tầng kỹ thuật đến hạ tầng xã hội một cách độc lập và hỗ trợ, giảm tải một số chức năng cho đô thị trung tâm. Mỗi đô thị vệ tinh được quy hoạch với chức năng khác nhau, trong đó Hòa Lạc được định hướng là đô thị công nghệ cao.
Sau khi có quy hoạch sự phát triển của các đô thị vệ tinh nói chung và Hòa Lạc nói riêng còn chậm, chưa thực sự phát triển những năm sau đó. Tuy nhiên, chỉ trong khoảng một vài năm qua thì đô thị vệ tinh Hòa Lạc bắt đầu có sự chuyển biến rất tích cực khi mà nhiều tập đoàn lớn trong và ngoài nước đến đầu tư, đặc biệt là 2 dự án quy mô lớn đang hình thành rõ nét là Quần thể khu Đại học Quốc gia Hà Nội và Khu công nghệ cao.

', 1, 2)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (26, N'Rạng Đông sẽ chi 800 tỷ đồng xây nhà máy mới tại Khu CNC Hòa Lạc', N'https://static.wixstatic.com/media/0caa0e_fc3b25d4c9814626bd65d1092a850a4c~mv2.png/v1/fill/w_720,h_449,al_c,lg_1,q_95/0caa0e_fc3b25d4c9814626bd65d1092a850a4c~mv2.webp', N'Theo Chủ tịch HĐQT Công ty cổ phần Bóng đèn phích nước Rạng Đông, công ty dự kiến chi 800 tỷ đồng để xây dựng nhà máy mới tại Khu Công nghệ cao Hòa Lạc.', N'Theo Chủ tịch HĐQT Công ty cổ phần Bóng đèn phích nước Rạng Đông, công ty dự kiến chi 800 tỷ đồng để xây dựng nhà máy mới tại Khu Công nghệ cao Hòa Lạc.

05-10-2019 Hết Meghan Markle đến lượt Hoàng tử Harry thông báo khởi kiện 2 tờ báo Anh... 

05-10-2019 Cá heo xuất hiện ở bờ biển Hội An là tín hiệu đáng mừng 

05-10-2019 Ranh giới giữa công nghệ và khoa học viễn tưởng: Tận mắt chứng kiến sự... ', 1, 2)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (27, N'Viettel và Ban quản lý khu công nghệ cao Hòa Lạc hợp tác chiến lược đẩy mạnh chuyển đổi số', N'https://static.wixstatic.com/media/0caa0e_715f9a1b6791402f80f9e1b2ae51f1b7~mv2.png/v1/fill/w_740,h_416,al_c,q_95/0caa0e_715f9a1b6791402f80f9e1b2ae51f1b7~mv2.webp', N'Viettel phối hợp với Ban Quản lý trong việc phát triển Khu CNC Hòa Lạc phát triển các ứng dụng liên quan đến thành phố thông minh, công nghệ Internet vạn vật.', N'Ngày 23/11, tại Khu công nghệ cao Hòa Lạc, Tập đoàn Công nghiệp – Viễn thông Quân đội (Viettel) và Ban Quản lý khu Công nghệ cao Hòa Lạc đã kí thỏa thuận hợp tác chiến lược với mục đích thúc đẩy sự phát triển của Khu Công nghệ cao Hòa Lạc (Khu CNC Hòa Lạc) và đáp ứng nhu cầu đầu tư, nghiên cứu, sản xuất, kinh doanh của Viettel.

Theo thoả thuận hợp tác chiến lược, quý 1/2020, Viettel sẽ khởi công xây dựng dự án Tổ hợp sản xuất công nghiệp CNC trên diện tích 9,1 ha tại Khu CNC Hòa Lạc. Đây sẽ trở thành trung tâm thử nghiệm, sản xuất thiết bị công nghệ cao của Viettel. Tiếp theo đó, Viettel cũng sẽ xây dựng Trung tâm Nghiên cứu và Phát triển Viettel trên diện tích 13,2 ha. Đây được coi là khu nghiên cứu R&D quy mô lớn, là vườn ươm cho những dự án trọng điểm của Viettel như các sản phẩm công nghiệp quốc phòng, thiết bị điện tử viễn thông, hạ tầng mạng 5G, IoT...', 1, 1)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (28, N'Kiểm soát phát triển nhà cao tầng để giảm tải nội đô', N'https://static.wixstatic.com/media/0caa0e_b47be3b5d26843a99189422ec6506924~mv2.jpg/v1/fill/w_740,h_444,al_c,q_90/0caa0e_b47be3b5d26843a99189422ec6506924~mv2.webp', N'Cùng với tốc độ đô thị hóa nhanh đến chóng mặt, các thành phố lớn đang phải đối mặt với nguy cơ mất cân bằng về hệ thống hạ tầng cơ sở cùng môi trường…  Một trong những nguyên nhân dẫn đến tình trạng này là sự quá tải về dân số đối với các đô thị trung tâm, trong đó có việc thiếu kiểm soát phát triển nhà cao tầng.', N'Đô thị bị bức tải


Định hướng quy hoạch phát triển tổng thể đô thị quốc gia đến năm 2025 đã chỉ rõ phải phát triển hệ thống đô thị hài hòa, cân đối giữa các vùng miền trong cả nước. Tuy nhiên, trên thực tế, dân số cơ học ở những đô thị lõi, đô thị trung tâm vẫn không ngừng tăng. Đặc biệt, xu hướng tập trung hóa đô thị hiện đang diễn ra phổ biến tại các thành phố lớn như Hà Nội và Thành phố Hồ Chí Minh.


Nếu các đô thị trong khu vực châu Á như tại Singapore, Hong Kong, mật độ dân số chỉ khoảng 6.500 người/km2 thì tại Thành phố Hồ Chí Minh con số này khoảng 26.500 người/km2. Với Thủ đô Hà Nội, hiện các quận nội thành cũng có mật độ lên tới 25.000-36.000 người/km2. Nếu nhìn lại quy hoạch năm 1998 mà Thủ tướng Chính phủ đã phê duyệt mới thấy giật mình bởi chỉ tiêu bốn quận nội thành Hà Nội (Hoàn Kiếm, Ba Đình, Đống Đa và Hai Bà Trưng) chỉ đề ra mức 800.000 dân, nhưng hiện nay đã phát triển lên tới 1,2 triệu dân.


Cùng với dòng người dịch cư ngày càng tăng, nhu cầu về nhà ở tại các đô thị đã trở lên bức xúc và phát triển loại hình chung cư cao tầng cũng là lộ trình tất yếu. Tuy nhiên, Bộ trưởng Bộ Xây dựng Trịnh Đình Dũng khẳng định việc phát triển nhà cao tầng tại nội đô cũng như sự ra đời của các công trình công cộng như trường học, bệnh viện, trung tâm mua sắm… chưa được kiểm soát một cách chặt chẽ và gia tăng với tốc độ chóng mặt. Không những thế, các khu đô thị mới còn thiếu hạ tầng kỹ thuật, xã hội, hạ tầng dịch vụ đồng bộ.


Nhiều khu đô thị xây xong, dân đã dọn về ở nhưng vẫn thiếu trường học, phòng khám bệnh, khu dịch vụ-thương mại… Do thiếu vốn, việc đầu tư phát triển hạ tầng hiện nay rất chậm so với yêu cầu của sự phát triển đô thị. Vì vậy, tất cả những yếu tố này đã tham gia bức tải nội đô và ảnh hưởng không tốt đến chất lượng cuộc sống của người dân.', 1, 1)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (29, N'Làm thế nào để cải thiện chất lượng không khí trong nhà?', N'https://static.wixstatic.com/media/9ff62e_f47e4d57345146f5a504cc832da60657~mv2.jpg/v1/fill/w_740,h_925,al_c,q_90/9ff62e_f47e4d57345146f5a504cc832da60657~mv2.webp', N'Những mùi khó chịu trong phòng ảnh hưởng như thế nào đến sức khỏe và có cách nào để xử lý mùi?', N'Mùi xuất phát từ đâu?

Mùi hương quá nồng có thể làm xáo trộn sự thoải mái về thể chất và tâm lý, thậm chí gây buồn nôn, đau đầu, kích ứng ở mắt, mũi và cổ họng. Nếu duy trì trong một thời gian dài có thể ảnh hưởng đến tâm trạng lo lắng và mức độ căng thẳng. Một nghiên cứu ở Đan Mạch chỉ ra, có dấu hiệu giảm năng suất làm việc khi để một tấm thảm 20 năm tuổi trong phòng gây ra mùi và chất ô nhiễm không khí.', 1, 4)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (30, N'Tổng quan đô thị Vệ Tinh Hòa Lạc', N'https://static.wixstatic.com/media/4df281_228c10cebc2c4672ab283451d0bcf54e~mv2.jpg/v1/fit/w_1000%2Ch_1000%2Cal_c%2Cq_80,enc_auto/file.jpg', N'Hòa Lạc sẽ là đô thị vệ tinh lớn nhất trong số 5 đô thị vệ tinh của Hà Nội, có vai trò đặc biệt trong chiến lược phát triển của Thủ đô. Tháng 5/2020 , Thủ tướng đã chính thức phê duyệt quy hoạch Hoà Lạc thành đô thị khoa học công nghệ với dự kiến năm 2030 quy mô dân số khoảng 600.000 người, diện tích quy mô 17.274 ha.', N'ổng quan đô thị Vệ Tinh Hòa Lạc  

1. Quy mô diện tích: Quy mô diện tích nghiên cứu quy hoạch khoảng 17.274ha.


2. Quy mô dân số: Quy mô dân số dự kiến đến năm 2030 là khoảng 600 nghìn người.


3. Các phân khu

+ Khu công nghệ cao Hòa Lạc:

Diện tích: Khoảng 1586ha

Dân số: 229.000 Người


+ Khu đại học Quốc Gia Hà Nội:

Diện tích: Khoảng 1140,42ha

Dân số: Khoảng 63.000 người


+ Khu đô thị

Diện tích: Khoảng 3400,73 ha

Dân số: Khoảng 242.000 người


+ Khu đô thị Phú Cát – Hòa Thạch

Diện tích: Khoảng 970.2ha

Dân số: Khoảng 103.000 người', 1, 2)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (31, N'Đô thị vệ tinh Hòa Lạc đang thay đổi như thế nào?', N'https://static.wixstatic.com/media/4df281_48e34d359b374e6988a1587ae664e36a~mv2.jpg/v1/fit/w_650%2Ch_406%2Cal_c%2Cq_80,enc_auto/file.jpg', N'Một năm trở lại đây, với sự góp mặt của nhiều tập đoàn lớn như VinGroup, Viettel, FPT, VNPT, Nidec, Nissan,…đang đầu mạnh xây dựng nhà máy tại khu công nghệ cao, kéo theo sự phát triển đô thị mạnh mẽ ở khu vực này', N'Quy hoạch chung Thủ đô đến năm 2030 tầm nhìn 2050 được Thủ tướng phê duyệt vào năm 2008, Hà Nội có 5 đô thị vệ tinh là Hòa Lạc, Sơn Tây, Sóc Sơn, Xuân Mai, Phú Xuyên. Các đô thị vệ tinh được định hướng phát triển hoàn chỉnh đồng bộ từ hạ tầng kỹ thuật đến hạ tầng xã hội một cách độc lập và hỗ trợ, giảm tải một số chức năng cho đô thị trung tâm. Mỗi đô thị vệ tinh được quy hoạch với chức năng khác nhau, trong đó Hòa Lạc được định hướng là đô thị công nghệ cao.
Sau khi có quy hoạch sự phát triển của các đô thị vệ tinh nói chung và Hòa Lạc nói riêng còn chậm, chưa thực sự phát triển những năm sau đó. Tuy nhiên, chỉ trong khoảng một vài năm qua thì đô thị vệ tinh Hòa Lạc bắt đầu có sự chuyển biến rất tích cực khi mà nhiều tập đoàn lớn trong và ngoài nước đến đầu tư, đặc biệt là 2 dự án quy mô lớn đang hình thành rõ nét là Quần thể khu Đại học Quốc gia Hà Nội và Khu công nghệ cao.

 

Theo người dân nơi đây, cơ sở hạ tầng của Khu công nghệ cao rất tốt, được quy hoạch và đầu tư bài bản, hiện đại về cơ bản đã hoàn thành. Vì thế, gần đây dòng vốn từ các tập đoàn lớn đổ mạnh vào đây để xây dựng các nhà máy, kéo theo việc làm gia tăng đáng kể. Nhiều người còn ví von, chỉ khoảng hơn 1 năm nay sự thay đổi của khu công nghệ cao Hòa Lạc bằng 10 năm trước cộng lại.

 

Có được sự thay đổi lớn này là bởi sau Hội nghị “Hà Nội 2018 – Hợp tác đầu tư và Phát triển” vào giữa năm 2018, với bản ghi nhớ đầu tư cho khu công nghệ cao và các tỉnh lân cận lên tới 70.000 tỷ đồng, đã dấy lên một làn sóng thu hút dòng vốn đầu tư vào Khu công nghệ cao Hòa Lạc.', 1, 2)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (33, N'Chính thức Cắm biển thi công xây dựng DT 420 rộng 24m trong 450 ngày', N'https://static.wixstatic.com/media/0caa0e_ed7f7d8b665e4a5c9e95163c88e06d5b~mv2.png', N'Ngày 11/11/2020, Ban quản lý dự án ĐTXD huyện Thạch Thất đã có giấy mời tổ chức hội nghị triển khai thi công nâng cấp đường tỉnh 420 đi qua đô thị vệ tinh Hòa Lạc.     Chính thức Cắm biển thi công xây dựng đường tỉnh 420 từ ngã ba Hòa Lạc - ngã ba thị trấn Liên Quan trong 450 ngày     Giấy mời số 122/GM - BQLDA, tổ chức hội nghị triển khai thi công dự án Cải tạo, nâng cấp DT420 từ Km0 00 đến Km7 428.  Hội nghị diễn ra vào 9 giờ ngày 14/11/2020 tại hội trường UBND xã Bình Yên, Thạch Thất.', N'Được biết, đơn vị thi công chính thức là Công ty CP xây dựng giao thông Long Thành, đơn vị giám sát là Liên danh Công ty cổ phần xây dựng phát triển 68 và Công ty cổ phần đầu tư xây dựng Kiến Hưng. Cùng đơn vị thiết kế là Công ty cổ phần tư vấn xây dựng giao thông Hà Nội.


Giá trúng thầu thi công là 203,45 tỷ đồng, giảm 1,48 tỷ đồng so với giá gói thầu. Thời gian thực hiện hợp đồng là 450 ngày, hợp đồng theo đơn giá cố định.

 

Trước đó, tháng 10/2019 UBND thành phố Hà Nội đã ban hành Quyết định 5582/QĐ-UBND phê duyệt chỉ giới đường đỏ tuyến tỉnh lộ 420 tỷ lệ 1/500, đoạn từ Km0 00 đến Km7 428 (ngã ba Hòa Lạc - ngã ba thị trấn Liên Quan) thuộc địa bàn huyện Thạch Thất.
Theo quyết định, điểm đầu tuyến (điểm A) tại nút giao với quốc lộ 21A (ngã ba Hòa Lạc); điểm cuối tuyến (điểm E) tại nút giao với tỉnh lộ 419 (thị trấn Liên Quan).


Trong đó, đoạn từ điểm A đến điểm B (giao với trục Hồ Tây - Ba Vì) dài khoảng 4,5km là đường chính khu vực. Đoạn từ điểm B đến điểm C (giao với các đường quy hoạch) dài khoảng 1km được nâng cấp đạt tiêu chuẩn đường cấp III đồng bằng.

 

Cả 2 đoạn trên đều có quy mô mặt cắt ngang 24m, gồm 4 làn xe, dải phân cách giữa rộng 1m, hè đường hai bên rộng 2x4,5m.


Đoạn từ điểm C đến điểm E dài khoảng l,9km là đường liên khu vực, được xác định trong quy hoạch chung thị trấn Liên Quan, quy mô mặt cắt ngang 18,5m, gồm lòng đường xe chạy 10,5m (3 làn xe), hè đường hai bên rộng 2x4m', 1, 3)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (34, N'Sự khác biệt sau 2 thập kỷ của Khu công nghệ cao Hòa Lạc', N'https://static.wixstatic.com/media/0caa0e_d18d6ce3529a49679c9d5c481d3a9931~mv2.png', N'Trong vòng 2 thập kỷ thành lập Khu công nghệ cao Hòa Lạc, qua nhiều khó khăn hình thành và phát triển siêu đô thị khoa học và công nghệ đang dần xuất hiện; quá trình phát triển có nhiều tín hiệu khởi sắc,…', N'Khu Công nghệ cao Hòa Lạc đang phát triển mạnh mẽ
 

Báo cáo của Bộ khoa học và công nghệ cho thấy, tính đến nay, Khu CNC Hòa Lạc đã thu hút được 93 dự án đầu tư với tổng vốn đăng ký khoảng 90.254 tỷ đồng; trong đó, năm 2020 đã cấp quyết định chủ trương đầu tư/giấy chứng nhận đăng ký với tổng số vốn khoảng 7.954 tỷ đồng.


Hiện nay, tại khu công nghệ cao Hòa Lạc có trên 22.000 người đang học tập và làm việc. Lực lượng lao động ở đây có trình độ đại học trở lên đạt trung bình trên 50%, tại một số dự án, tỷ lệ này đạt trên 90%.


Đặc biệt, đã có một số sản phẩm công nghệ cao tiêu biểu được phát triển, sản xuất tại Khu công nghệ cao Hòa Lạc, như: Điện thoại thông minh 5G, thiết bị mạng 5G do Công ty Vinsmart hợp tác với Qualcomm sản xuất; radar cảnh giới biển ứng dụng công nghệ 4G, 5G của Tập đoàn Viettel; cấu kiện động cơ máy bay, dụng cụ cắt gọt công nghệ cao trong công nghiệp hàng không của Công ty Hanwha; tủ điện hạ thế, trung thế của Công ty Á Châu với công nghệ được chuyển giao từ các hãng sản xuất thiết bị điện hàng đầu thế giới…

Tại Hội nghị tổng kết công tác năm 2020 và triển khai nhiệm vụ năm 2021 của Ban quản lý khu công nghệ cao Hòa Lạc diễn ra mới đây, Bộ trưởng Bộ khoa học và công nghệ Huỳnh Thành Đạt cho biết, xây dựng và phát triển Khu công nghệ cao Hòa Lạc là chủ trương lớn của Đảng, Nhà nước và Chính phủ, nhằm hình thành một đô thị khoa học và công nghệ, hệ sinh thái thông minh cho phát triển khoa học và công nghệ, góp phần thúc đẩy phát triển kinh tế - xã hội của đất nước.


Để phát triển Khu công nghệ cao Hòa Lạc, Bộ trưởng Huỳnh Thành Đạt đề nghị, thời gian tới, cần tập trung kiện toàn tổ chức bộ máy; tiếp tục nghiên cứu các phương án đón nhận xu hướng chuyển dịch đầu tư sang Việt Nam của nhà đầu tư nước ngoài; trong quá trình thu hút, triển khai dự án đầu tư cần bám sát chỉ đạo, định hướng lớn của Đảng; đẩy mạnh hợp tác với trường đại học, viện nghiên cứu trong đào tạo, chuyển giao công nghệ, hình thành các doanh nghiệp công nghệ cao, các startup tại Khu công nghệ cao Hòa Lạc; tăng cường hợp tác quốc tế với khu công nghệ cao, khu công nghiệp công nghệ cao ở nước ngoài, nhằm nâng cao tiềm lực công nghệ cao và tiếp cận với các nhà đầu tư lớn…', 1, 4)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (35, N'Tầm nhìn 10 năm cho Bất động sản Hòa Lạc', N'https://static.wixstatic.com/media/0caa0e_aba419d587c24568afc77e0a06f6962b~mv2.png', N'Tại sao Hòa Lạc lại thu hút các ông lớn trong nước và các nhà đầu tư nước ngoài đến vậy, trong vòng 10 năm nữa Hòa Lạc sẽ ra sao? Những nhận định của các chuyên gia hàng đầu có chính xác khi khẳng định Hòa Lạc sẽ là Siêu đô thị vệ tinh phát triển nhất. Vậy Vậy đâu là tầm nhìn cho bất động sản Hòa Lạc trong 10 năm tới đây?', N'Bất động sản Hòa Lạc - Hành trình 10 năm đầy biến động
 

Khoảng thời gian 10 năm trở lại đây là khoảng thời gian khá khó khăn với Hòa Lạc khi các thông tin đồn thổi về quy hoạch khiến đất khu vực Hòa Lạc nóng sốt. Quy hoạch không diễn ra như tin đồn và sự dậm chân tại chỗ của các dự án đã khiến đất Hòa Lạc rơi vào cảnh trầm lắng nhiều năm sau đó.


Tuy nhiên Mới đây, Thủ tướng đã phê duyệt quy hoạch chung đô thị vệ tinh Hòa Lạc đến 2030 tầm nhìn 2050. thị trường Hòa Lạc bắt đầu sôi động trở lại.Theo đó, Hòa Lạc được định hướng phát triển thành đô thị khoa học công nghệ với quy mô dân số khoảng 600.000 dân, quy mô diện tích 17.274ha.
Những lợi thế của bất động sản Hòa Lạc

Vào tháng 10/2018, tuyến cao tốc đi Hòa Bình nối thông với đường Láng – Hòa Lạc chính thức được vận hành, trở thành tiền đề quan trọng cho sự thông thương kinh tế của Hòa Lạc nói riêng và phía Tây Hà Nội nói chung. Như vậy, bên cạnh tuyến đường trọng điểm là cao tốc Láng – Hòa Lạc chạy thẳng từ Big C Thăng Long đến điểm cuối nút giao Hòa Lạc. Tuyến cao tốc đi Hòa Bình cũng góp phần kết nối giữa Hòa Lạc và các vùng khác ngày càng trở nên thuận tiện hơn.


Đáng chú ý, vào cuối năm 2018, UBND TP Hà Nội đã trình Thủ tướng Chính phủ xem xét, phê duyệt quy hoạch chung đô thị Hòa Lạc (Hà Nội) đến năm 2030, tỷ lệ 1/10.000 với quy mô nghiên cứu khoảng 17.000ha và 600.000 dân.


Trong đó, khu công nghệ cao cũng có những tín hiệu mới. Hàng loạt nhà máy lớn đã được khởi công hoặc xây dựng xong như nhà máy Mitsubishi, Vrex (Nhật Bản), nhà máy Kova (Hàn Quốc), Hanwha Aero Engines của Công ty Hanwha Techwin, Aqua (Hàn Quốc), nhà máy sản xuất thiết bị điện tử thông minh của Vingroup (Việt Nam)…

', 1, 4)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (36, N'Hòa Lạc sẽ Xây dựng Trung tâm đổi mới sáng tạo quốc gia với tổng vốn đầu tư lên tới 740 tỷ đồng!', N'https://static.wixstatic.com/media/0caa0e_276cc3f3eb0b48ceaafaa97637ac8fcd~mv2.png', N'Thực hiện Quyết định số 1269 của Thủ tướng Chính phủ, ngày 9/1/2021 tới đây, Trung tâm đổi mới sáng tạo quốc gia sẽ được Bộ Kế hoạch và đầu tư chủ trì xây dựng tại khu công nghệ cao Hoà Lạc, Hà Nội.', N'Cách mạng công nghệ 4.0 với những bước tiến vượt bậc đã và đang làm thay đổi đời sống, xã hội cũng như hoạt động sản xuất, quản trị, kinh doanh từng ngày, từng giờ. Trong bối cảnh đó, Việt Nam đã xác định chuyển đổi số là cốt lõi của cách mạng công nghệ 4.0, từ đó thúc đẩy hoạt động đổi mới sáng tạo, từng bước chuyển đổi mô hình kinh tế, nâng cao năng lực cạnh tranh, hướng tới phát triển bao trùm và bền vững.


Ông Trần Duy Đông- Thứ trưởng Bộ Kế hoạch và đầu tư cho biết, hoạt động đổi mới sáng tạo sẽ là động lực quan trọng giúp Việt Nam thoát khỏi bẫy thu nhập trung bình, thông qua những giải pháp, mô hình, quy trình giúp nâng cao năng lực cạnh tranh, nâng cao giá trị của doanh nghiệp.


Hoạt động đổi mới sáng tạo trong thời gian qua đã được triển khai tại nhiều doanh nghiệp đa dạng về quy mô, trong đó có 2 kỳ lân khởi nghiệp công nghệ. Đây là tín hiệu tốt cho thấy năng lực, tư duy của cộng đồng doanh nghiệp Việt.


Tuy nhiên, theo ông Đông, Việt Nam vẫn chưa phát huy hết tiềm năng của khoa học công nghệ trong đổi mới sáng tạo. Đây là yếu tố cốt lõi cần phải được khai thác vào năm 2021, năm bản lề cho phục hồi và tăng trưởng bứt phá.', 1, 4)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (37, N'Thẩm định tiền khả thi đường sắt số 5 tuyến Văn Cao - Láng - Hòa Lạc', N'https://static.wixstatic.com/media/0caa0e_6bfaa99ca7ad417d95e12b48a6bbba96~mv2.png/v1/fill/w_740,h_416,al_c,q_90/0caa0e_6bfaa99ca7ad417d95e12b48a6bbba96~mv2.webp', N'Ngày 30/10/2020, Thủ tướng lập Hội đồng thẩm định nhà nước báo cáo nghiên cứu tiền khả thi dự án đường sắt đô thị số 5 tuyến Văn Cao - Ngọc Khánh - Láng - Hòa Lạc.', N'Bộ trưởng Kế hoạch và Đầu tư làm chủ tịch hội đồng; Phó chủ tịch là thứ trưởng; thành viên gồm đại diện 13 Bộ và Ngân hàng Nhà nước, UBND Hà Nội.


Trách nhiệm, quyền hạn của Hội đồng và các thành viên thực hiện theo Nghị định 131 hướng dẫn về dự án quan trọng quốc gia và các quy định khác có liên quan. Trường hợp cần thiết, Chủ tịch hội đồng báo cáo Thủ tướng việc thuê tư vấn nước ngoài hoặc liên danh tư vấn trong nước và tư vấn nước ngoài để thẩm tra dự án.
Tuyến đường sắt đô thị số 5 của Hà Nội được dự kiến chạy từ phố Văn Cao đến Hòa Lạc, dài 39 km với 21 nhà ga (6 ga ngầm và 15 ga nổi); tổng mức đầu tư dự kiến 65.400 tỷ đồng.


Khởi đầu từ khu vực đường Văn Cao giao với Hoàng Hoa Thám, metro số 5 sẽ đi ngầm qua Liễu Giai, Nguyễn Chí Thanh, Trần Duy Hưng, vành đai 3 và đi nổi từ đại lộ Thăng Long.


Từ nút giao Hòa Lạc (vành đai 4) đến cuối tuyến thuộc thôn Thạch Bình (xã Yên Bình), metro số 5 đi trên mặt đất vào dải phân cách giữa của cao tốc quy hoạch Hòa Lạc - Hòa Bình.


Tuyến đường sắt đô thị số 5 Văn Cao - Hòa Lạc được coi là tuyến quan trọng trong việc kết nối giao thông đô thị trung tâm và đô thị vệ tinh thủ đô Hà Nội.

Điểm đầu: Tại Hồ Tây vị trí đầu đường Văn Cao, điểm cuối tại Hòa Lạc.

Chiều dài: 39km

Lộ trình: Hồ Tây – Văn Cao – Ngọc Khánh – Đại lộ Thăng Long – Vành đai 4 – Hòa Lạc. Đoạn từ Nam Hồ Tây – Nguyễn Chí Thanh – Trần Duy Hưng – Trung tâm Hội nghị quốc gia đi ngầm, đoạn tiếp theo đi trên mặt đất hoặc đi cao trong phạm vi dải phân cách giữa của đại lộ Thăng Long.

Tiến độ thực hiện: Đang trong quá trình lập dự án, dự kiến vận hành đoạn Văn Cao – Vành đai 4 từ 2020-2030, đoạn vành đai 4 – Hòa Lạc vận hành sau 2030.', 1, 5)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (38, N'Cao tốc Hòa Bình - Mộc Châu 22.000 tỷ đồng sẽ kết nối với Hà Nội', N'https://static.wixstatic.com/media/0caa0e_73b8ff8545e34713876a47b072b65fbb~mv2.jpg/v1/fill/w_740,h_1405,al_c,q_90/0caa0e_73b8ff8545e34713876a47b072b65fbb~mv2.webp', N'Cao tốc Hòa Bình – Mộc Châu (Sơn La) dài 85 km, dự kiến thi công trong hơn 4 năm và sau đó sẽ kết nối với đường Hoà Lạc - Hoà Bình. Dự kiến sẽ kết nối tuyến Cao tốc Hà Nội - Mộc Châu trong tương lai, giúp việc di chuyển giữa các tỉnh sẽ nhanh chóng và thuận lợi hơn. ', N'Cao tốc Hòa Bình - Mộc Châu

Dự án xây dựng tuyến cao tốc Hòa Bình - Mộc Châu đã được Thủ tướng Chính phủ phê duyệt chủ trương đầu hồi tháng 5/2019 và giao UBND tỉnh Sơn La là cơ quan nhà nước có thẩm quyền. Dự án có có tổng chiều dài khoảng 85km với điểm đầu tại nút giao Quốc lộ 6 và điểm cuối tại nút giao với Quốc lộ 43, huyện Mộc Châu, tỉnh Sơn La. Tổng mức đầu tư dự án (giai đoạn I) là khoảng 22.294 tỷ đồng với quy mô nền đường 17m; giai đoạn hoàn thiện bề rộng nền đường 22m; tốc độ thiết kế 80 km/h, các đoạn khó khăn thiết kế với vận tốc 60 km/h. 
Tiếp nối trở thành cao tốc Hà Nội - Mộc Châu 
Qua quá trình triển khai công tác chuẩn bị đầu tư, UBND tỉnh Sơn La kiến nghị điều chỉnh báo cáo nghiên cứu thiết kế khả thi tuyến cao tốc Hòa Bình - Mộc Châu. Trong đó thay đổi điểm đầu tuyến đường từ nút giao Quốc lộ 6 thành giao với điểm cuối tuyến Hòa Lạc - Hòa Bình. Về quy mô đầu tư, UBND tỉnh Sơn La đề nghị trong giai đoạn 1, phân kỳ đầu tư điều chỉnh từ quy mô nền đường 17m xuống 13,5m; giai đoạn hoàn chỉnh đầu tư với quy mô 4 làn xe cao tốc. Thời gian triển khai thực hiện dự án giai đoạn 1 từ năm 2021 - 2026. Thời gian hoàn vốn khoảng 25 năm thu phí sau năm 2026. Giai đoạn 2 sẽ thực hiện đầu tư sau năm 2035. ', 1, 5)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (39, N'Bất động sản Hòa Lạc : Các dự án kích cầu liệu có bùng nổ?', N'https://static.wixstatic.com/media/0caa0e_9c153de49f134200a248f7b71cf9d9e4~mv2.png', N'Dự án đường sắt đô thị của Vingroup Dự án đường sắt được ghi nhớ để theo kịp tốc độ phát triển khu đô thị vệ tinh Hòa Lạc đến năm 2030 tầm nhìn năm 2050. Ngày 25/6 vừa qua UBND Thành Phố đã trao bản ghi nhớ với các doanh nghiệp. Để thực hiện một số các dự án lớn của thành phố. Riêng Vingroup sẽ đầu tư khoảng 100.000 tỷ để xây dựng tuyến đường sắt đô thị tại Hà Nội. Thành phố cho phép tham gia nghiên cứu các đoạn, tuyến trong 5 tuyến đường sắt đô thị. Trong đó có tuyến số 5 : Văn Cao – Ngọc Khánh – Đại lộ Thăng Long – Vành đai 4 – Vành đai 4 – Hòa Lạc.', N'Quy hoạch giao thông đô thị 
Theo quy hoạch tổng thể, giao thông đô thị của thủ đô. Mạng lưới Metro – Hà Nội gồm 8 tuyến với tổng chiều dài 284km. Trước đó hồi tháng 2 năm 2017, tại buổi làm việc, phó thủ tướng Trịnh Đình Dũng và chủ tịch Nguyễn Đức Chung đã cho biết thành phố nhận được đề xuất của 3 tập đoàn lớn. Là tổng công ty xây dựng Lũng Lô và tập đoàn Xuân Thành. Nhưng cuối cùng, tập đoàn Vingroup được UBND Hà Nội trao bản ghi nhớ thực hiện dự án đường sắt đô thị. Vingroup đã trở thành doanh nghiệp tư nhân đầu tiên làm đường sắt đô thị.
Quy hoạch giao thông tạo sự bền vững 
Với hệ thống giao thông được kết nối giữa khu đô thị trung tâm và khu đô thị vệ tinh Hòa Lạc. Tạo điều kiện thuận lợi để phát triển kinh tế cũng như đô thị bền vững. Phục vụ đi lại cho người dân. Với mạng lưới xe buýt đã hình thành và hệ thống tàu điện thì khoảng cách địa lý sẽ không còn nữa. Nhường lại chỗ cho sự phát triển 1 khu đô thị khoa học, công nghệ và tri thức. Hướng tới khu đô thị sinh thái thân thiện với thiên nhiên. Và phát triển du lịch tạo thế và lực cho thủ đô.
', 1, 5)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (40, N'Ngân hàng Thế giới phê duyệt 100,87 triệu USD xây dựng trường đại học Quốc gia Hà Nội tại Hòa Lạc', N'https://static.wixstatic.com/media/0caa0e_d0d2e44a32de4926b66c6f5cc1e0f672~mv2.png/v1/fill/w_740,h_548,al_c,lg_1,q_90/0caa0e_d0d2e44a32de4926b66c6f5cc1e0f672~mv2.webp', N'Sáng nay 1/7, Ngân hàng Thế giới đã phê duyệt khoản tài chính trị giá tổng cộng 422 triệu USD để nâng cao chất lượng của ba cơ sở giáo dục đại học Việt Nam và hỗ trợ thành phố Vĩnh Long', N'Theo thông tin từ Ngân hàng Thế giới (World Bank), sáng nay, 01/7/2020 theo giờ Việt Nam, tại Washington (Hoa Kỳ), Ban Giám đốc Điều hành Ngân hàng Thế giới đã phê duyệt khoản tài chính trị giá tổng cộng 422 triệu USD để nâng cao chất lượng của ba cơ sở giáo dục đại học Việt Nam và hỗ trợ thành phố Vĩnh Long tăng khả năng chống chịu với biến đổi khí hậu.


Dự án phát triển đại học Việt Nam được hỗ trợ khoản tín dụng trị giá 295 triệu USD, sẽ góp phần nâng cao năng lực giảng dạy và nghiên cứu tại Đại học Quốc gia Hà Nội, Đại học Quốc gia Thành phố Hồ Chí Minh và Đại học Đà Nẵng.
Thông qua các khoản đầu tư vào cơ sở vật chất hiện đại, thiết bị tiên tiến và chuyển giao tri thức, dự án sẽ giúp đẩy nhanh quá trình chuyển đổi ba trường đại học này thành các cơ sở giáo dục có khả năng cạnh tranh ở cấp khu vực với năng lực giảng dạy và nghiên cứu tiên tiến.


“Đầu tư vào vốn nhân lực và phát triển đô thị là những ưu tiên hàng đầu trong hoạt động của Ngân hàng Thế giới tại Việt Nam”, ông Ousmane Dione, Giám đốc Ngân hàng Thế giới tại Việt Nam cho biết. “Hai dự án này sẽ thúc đẩy những tiến bộ trong các lĩnh vực quan trọng đối với quá trình tăng trưởng bền vững của Việt Nam: lực lượng lao động tay nghề cao và cơ sở hạ tầng xanh và hiệu quả hơn”.


Theo thông cáo báo chí của Ngân hàng Thế giới, Dự án Phát triển Đại học Việt Nam được thực hiện tại ba cơ sở giáo dục đại học hàng đầu Việt Nam sẽ góp phần giải quyết một số thách thức chính mà hệ thống giáo dục đại học hiện đang phải đối mặt.', 1, 5)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (41, N'Kiến nghị thu hồi 29 dự án hơn 1.840ha ở Tiến Xuân Thạch Thất Hà Nội', N'https://static.wixstatic.com/media/0caa0e_734176c4885d48bca2704a688e7f731a~mv2.png/v1/fill/w_740,h_416,al_c,q_90/0caa0e_734176c4885d48bca2704a688e7f731a~mv2.webp', N'UBND thành phố Hà Nội vừa có báo cáo kết quả thực hiện nội dung kết luận, kiến nghị của HĐND thành phố về tình hình quản lý các dự án đầu tư vốn ngoài ngân sách sử dụng đất chậm triển khai, vi phạm Luật Đất đai trên địa bàn thành phố. Theo đó, qua rà soát có 383 dự án có dấu hiệu vi phạm các quy định của pháp luật đất đai. Trong đó, 295 dự án đã được giao đất, cho thuê đất; 88 dự án chưa có quyết định giao đất, cho thuê đất; 161 dự án có dấu hiệu vi phạm các quy định của pháp luật đất đai.', N'Được biết, từ tháng 7/2018 đến nay, Sở Tài nguyên – Môi trường Hà Nội đã chủ trì, phối hợp với các Sở, ban, ngành thành phố và UBND cấp huyện rà soát, đối chiếu và triển khai các đoàn thanh tra, kiểm tra liên ngành để thanh tra, kiểm tra việc chấp hành pháp luật đất đai đối với 379 dự án được nhà nước giao đất, cho thuê đất, chuyển mục đích sử dụng đất; tổ chức sử dụng đất có dấu hiệu vi phạm pháp luật đất đai. 


Kết quả cho thấy, có 35 dự án với tổng diện tích 57ha đất chậm tiến độ, chậm đưa đất vào sử dụng, UBND TP quyết định gia hạn sử dụng đất 24 tháng và chủ đầu tư phải nộp tiền cho Nhà nước khoản tiền tương ứng với tiền sử dụng đất, tiền thuê đất đối với thời gian gia hạn. Hết thời hạn thu hồi đất mà chủ đầu tư vẫn chưa đưa đất vào sử dụng thì nhà nước thu hồi đất mà không bồi thường về đất và tài sản gắn liền trên đất.', 1, 5)
INSERT [dbo].[news] ([idNews], [title], [thumbnail], [shortDescription], [content], [idACC], [idCategory]) VALUES (44, N'a', N'a', N'a', N'a', 1, 1)
SET IDENTITY_INSERT [dbo].[news] OFF
ALTER TABLE [dbo].[comment]  WITH CHECK ADD FOREIGN KEY([idACC])
REFERENCES [dbo].[account] ([idACC])
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD FOREIGN KEY([idNews])
REFERENCES [dbo].[news] ([idNews])
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD FOREIGN KEY([idACC])
REFERENCES [dbo].[account] ([idACC])
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD FOREIGN KEY([idCategory])
REFERENCES [dbo].[category] ([idCategory])
GO
USE [master]
GO
ALTER DATABASE [Assignment_PRJ] SET  READ_WRITE 
GO
