USE [Nimap]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09-11-2024 23:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09-11-2024 23:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Electronics')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Clothing')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Books')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Home Appliances')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Sports')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (6, N'Toys')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (7, N'Health & Beauty')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (8, N'Automotive')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (9, N'Furniture')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (10, N'Groceries')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (3, N'Head Phone', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (4, N'Shirt', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (5, N'Product 3', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (6, N'Product 4', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (7, N'Product 5', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (8, N'Product 6', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (9, N'Product 7', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (10, N'Product 8', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (11, N'Product 9', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (12, N'Product 10', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (13, N'Product 11', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (14, N'Product 12', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (15, N'Product 13', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (16, N'Product 14', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (17, N'Product 15', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (18, N'Product 16', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (19, N'Product 17', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (20, N'Product 18', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (21, N'Product 19', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (22, N'Product 20', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (23, N'Product 21', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (24, N'Product 22', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (25, N'Product 23', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (26, N'Product 24', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (27, N'Product 25', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (28, N'Product 26', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (29, N'Product 27', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (30, N'Product 28', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (31, N'Product 29', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (32, N'Product 30', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (33, N'Product 31', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (34, N'Product 32', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (35, N'Product 33', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (36, N'Product 34', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (37, N'Product 35', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (38, N'Product 36', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (39, N'Product 37', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (40, N'Product 38', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (41, N'Product 39', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (42, N'Product 40', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (43, N'Product 41', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (44, N'Product 42', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (45, N'Product 43', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (46, N'Product 44', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (47, N'Product 45', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (48, N'Product 46', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (49, N'Product 47', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (50, N'Product 48', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (51, N'Product 49', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (52, N'Product 50', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (53, N'Product 51', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (54, N'Product 52', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (55, N'Product 53', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (56, N'Product 54', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (57, N'Product 55', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (58, N'Product 56', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (59, N'Product 57', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (60, N'Product 58', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (61, N'Product 59', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (62, N'Product 60', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (63, N'Product 61', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (64, N'Product 62', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (65, N'Product 63', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (66, N'Product 64', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (67, N'Product 65', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (68, N'Product 66', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (69, N'Product 67', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (70, N'Product 68', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (71, N'Product 69', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (72, N'Product 70', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (73, N'Product 71', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (74, N'Product 72', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (75, N'Product 73', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (76, N'Product 74', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (77, N'Product 75', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (78, N'Product 76', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (79, N'Product 77', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (80, N'Product 78', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (81, N'Product 79', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (82, N'Product 80', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (83, N'Product 81', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (84, N'Product 82', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (85, N'Product 83', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (86, N'Product 84', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (87, N'Product 85', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (88, N'Product 86', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (89, N'Product 87', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (90, N'Product 88', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (91, N'Product 89', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (92, N'Product 90', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (93, N'Product 91', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (94, N'Product 92', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (95, N'Product 93', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (96, N'Product 94', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (97, N'Product 95', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (98, N'Product 96', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (99, N'Product 97', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (100, N'Product 98', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (101, N'Product 99', 9)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (102, N'Product 100', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (103, N'Product 101', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (104, N'Product 102', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (105, N'Product 103', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (106, N'Product 104', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (107, N'Product 105', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (108, N'Product 106', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (109, N'Product 107', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (110, N'Product 108', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (111, N'Product 109', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (112, N'Product 110', 10)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (113, N'Product 111', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (114, N'Product 112', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (115, N'Product 113', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (116, N'Product 114', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (117, N'Product 115', 5)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (118, N'Product 116', 6)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (119, N'Product 117', 7)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (120, N'Product 118', 8)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (121, N'Product 119', 9)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (128, N'Mobile', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (130, N'Mobile', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId]) VALUES (131, N'Mobile', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
