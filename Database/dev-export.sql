/****** Object:  Table [dbo].[cmsMacro]    Script Date: 04/13/2014 01:13:13 ******/
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroScriptType] [nvarchar](255) NULL,
	[macroScriptAssembly] [nvarchar](255) NULL,
	[macroXSLT] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroPython] [nvarchar](255) NULL,
 CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsTaskType]    Script Date: 04/13/2014 01:13:14 ******/
CREATE TABLE [dbo].[cmsTaskType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsTaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE NONCLUSTERED INDEX [IX_cmsTaskType_alias] ON [dbo].[cmsTaskType] 
(
	[alias] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[cmsTaskType] ON
INSERT [dbo].[cmsTaskType] ([id], [alias]) VALUES (1, N'toTranslate')
SET IDENTITY_INSERT [dbo].[cmsTaskType] OFF
/****** Object:  Table [dbo].[cmsTags]    Script Date: 04/13/2014 01:13:15 ******/
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [nvarchar](200) NULL,
	[ParentId] [int] NULL,
	[group] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsStylesheetProperty]    Script Date: 04/13/2014 01:13:16 ******/
CREATE TABLE [dbo].[cmsStylesheetProperty](
	[nodeId] [int] NOT NULL,
	[stylesheetPropertyEditor] [bit] NULL,
	[stylesheetPropertyAlias] [nvarchar](50) NULL,
	[stylesheetPropertyValue] [nvarchar](400) NULL,
 CONSTRAINT [PK_cmsStylesheetProperty] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 04/13/2014 01:13:18 ******/
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NOT NULL,
	[key] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDictionary_id] ON [dbo].[cmsDictionary] 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
/****** Object:  Table [dbo].[cmsMacroPropertyType]    Script Date: 04/13/2014 01:13:19 ******/
CREATE TABLE [dbo].[cmsMacroPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroPropertyTypeAlias] [nvarchar](50) NULL,
	[macroPropertyTypeRenderAssembly] [nvarchar](255) NULL,
	[macroPropertyTypeRenderType] [nvarchar](255) NULL,
	[macroPropertyTypeBaseType] [nvarchar](255) NULL,
 CONSTRAINT [PK_cmsMacroPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
SET IDENTITY_INSERT [dbo].[cmsMacroPropertyType] ON
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (3, N'mediaCurrent', N'umbraco.macroRenderings', N'media', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (4, N'contentSubs', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (5, N'contentRandom', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (6, N'contentPicker', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (13, N'number', N'umbraco.macroRenderings', N'numeric', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (14, N'bool', N'umbraco.macroRenderings', N'yesNo', N'Boolean')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (16, N'text', N'umbraco.macroRenderings', N'text', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (17, N'contentTree', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (18, N'contentType', N'umbraco.macroRenderings', N'contentTypeSingle', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (19, N'contentTypeMultiple', N'umbraco.macroRenderings', N'contentTypeMultiple', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (20, N'contentAll', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (21, N'tabPicker', N'umbraco.macroRenderings', N'tabPicker', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (22, N'tabPickerMultiple', N'umbraco.macroRenderings', N'tabPickerMultiple', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (23, N'propertyTypePicker', N'umbraco.macroRenderings', N'propertyTypePicker', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (24, N'propertyTypePickerMultiple', N'umbraco.macroRenderings', N'propertyTypePickerMultiple', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (25, N'textMultiLine', N'umbraco.macroRenderings', N'textMultiple', N'String')
SET IDENTITY_INSERT [dbo].[cmsMacroPropertyType] OFF
/****** Object:  Table [dbo].[umbracoUserType]    Script Date: 04/13/2014 01:13:20 ******/
CREATE TABLE [dbo].[umbracoUserType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userTypeAlias] [nvarchar](50) NULL,
	[userTypeName] [nvarchar](255) NOT NULL,
	[userTypeDefaultPermissions] [nvarchar](50) NULL,
 CONSTRAINT [PK_umbracoUserType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
SET IDENTITY_INSERT [dbo].[umbracoUserType] ON
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (2, N'writer', N'Writer', N'CAH:F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (4, N'translator', N'Translator', N'AF')
SET IDENTITY_INSERT [dbo].[umbracoUserType] OFF
/****** Object:  Table [dbo].[umbracoUserLogins]    Script Date: 04/13/2014 01:13:21 ******/
CREATE TABLE [dbo].[umbracoUserLogins](
	[contextID] [uniqueidentifier] NOT NULL,
	[userID] [int] NOT NULL,
	[timeout] [bigint] NOT NULL
)
GO
CREATE CLUSTERED INDEX [umbracoUserLogins_Index] ON [dbo].[umbracoUserLogins] 
(
	[contextID] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'6f55a204-630b-444c-84e7-1f0fec81a44d', 0, 635327580852354216)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'8af5d8b7-9690-4748-9a31-1f6ce27f73dd', 0, 635327579940392590)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'd9280e53-76b8-404a-9fbc-3567747dc906', 0, 635327578701650079)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'fbc264db-56cf-4968-a522-4290fea19350', 1, 635329496492754918)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'2785bb49-9917-4740-993f-42fe7cbded90', 7, 635329338192253760)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'aac0dd76-54cc-48fb-9abf-4c504ca032e9', 0, 635329196267208131)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'25e216ed-b5b1-42de-9f6a-52f97cfe1c3f', 0, 635327404312236722)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'd279dff0-cd9f-442d-ab75-53851d27ac0b', 8, 635329676593325473)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'a56ff4ff-06b6-4744-9e8e-64590e35177b', 0, 635327579027708075)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'667c668d-8bcc-4150-9d68-6a49394e3f24', 0, 635329327252007839)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'c7b5a37b-42d8-4ec2-ab48-757f951f0dca', 0, 635327355338316704)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'fcc188b5-93f3-43d8-ae87-78acff0c208f', 0, 635327169203189254)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'292edafa-758c-49a1-ba37-80a1d2f11398', 0, 635327579521601575)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'7a965b17-9bbf-421c-9b28-814e3584db1f', 1, 635329333710358193)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'2e91be67-5677-4d0f-ba7c-945c659a5725', 0, 635327663054281310)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'4cf65253-0cfe-42ae-932d-a7d593583aa8', 7, 635329466436547095)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'adb4e5c0-74ce-4b54-8572-aab9126e488d', 0, 635329263565517173)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'32735032-55f7-453d-b235-c0b0e134cc64', 0, 635327168413194069)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'c30f4888-9fdf-4083-9754-c4b6cdce2d16', 0, 635327816182001430)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'd10534ae-26c6-420a-a9a0-d4f44f4c8508', 2, 635329676631518990)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'39b76234-75a4-4ef4-90f0-dd4b245d304f', 1, 635329648388693038)
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'd2d60082-666c-4a02-80b3-eb78d30de053', 7, 635329333742048784)
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 04/13/2014 01:13:23 ******/
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_computerName] ON [dbo].[umbracoServer] 
(
	[computerName] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
CREATE NONCLUSTERED INDEX [IX_umbracoServer_isActive] ON [dbo].[umbracoServer] 
(
	[isActive] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 04/13/2014 01:13:24 ******/
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NOT NULL,
	[childObjectType] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON
INSERT [dbo].[umbracoRelationType] ([id], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 04/13/2014 01:13:26 ******/
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trashed] [bit] NOT NULL,
	[parentID] [int] NOT NULL,
	[nodeUser] [int] NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_structure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE NONCLUSTERED INDEX [IX_umbracoNodeObjectType] ON [dbo].[umbracoNode] 
(
	[nodeObjectType] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
CREATE NONCLUSTERED INDEX [IX_umbracoNodeParentId] ON [dbo].[umbracoNode] 
(
	[parentID] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] ON
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-92, 0, -1, 0, 1, N'-1,-92', 35, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', N'Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D1CE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-90, 0, -1, 0, 1, N'-1,-90', 34, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D1D7 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-89, 0, -1, 0, 1, N'-1,-89', 33, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', N'Textbox multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D1E2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-88, 0, -1, 0, 1, N'-1,-88', 32, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D1EA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-87, 0, -1, 0, 1, N'-1,-87', 4, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D1F3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-51, 0, -1, 0, 1, N'-1,-51', 2, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D1FC AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-49, 0, -1, 0, 1, N'-1,-49', 2, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D204 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-43, 0, -1, 0, 1, N'-1,-43', 2, N'fbaf13a8-4036-41f2-93a3-974f678c312a', N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D20D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-42, 0, -1, 0, 1, N'-1,-42', 2, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D216 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-41, 0, -1, 0, 1, N'-1,-41', 2, N'5046194e-4237-453c-a547-15db3a07c4e1', N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D21F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-40, 0, -1, 0, 1, N'-1,-40', 2, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D228 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-39, 0, -1, 0, 1, N'-1,-39', 2, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D231 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-38, 0, -1, 0, 1, N'-1,-38', 2, N'fd9f1447-6c61-4a7c-9595-5aa39147d318', N'Folder Browser', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D239 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-37, 0, -1, 0, 1, N'-1,-37', 2, N'0225af17-b302-49cb-9176-b9f35cab9c17', N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D242 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-36, 0, -1, 0, 1, N'-1,-36', 2, N'e4d66c0f-b935-4200-81f0-025f7256b89a', N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D24A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-21, 0, -1, 0, 0, N'-1,-21', 0, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(0x0000A3090077D1C5 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-20, 0, -1, 0, 0, N'-1,-20', 0, N'0f582a79-1e41-4cf0-bfa0-76340651891a', N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(0x0000A3090077D1BD AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-1, 0, -1, 0, 0, N'-1', 0, N'916724a5-173d-4619-b97e-b9de133dd6f5', N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(0x0000A3090077D1B3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1031, 0, -1, 0, 1, N'-1,1031', 2, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A3090077D253 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1032, 0, -1, 0, 1, N'-1,1032', 2, N'cc07b313-0843-4aa8-bbda-871c8da728c8', N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A3090077D25C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1033, 0, -1, 0, 1, N'-1,1033', 2, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A3090077D264 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1034, 0, -1, 0, 1, N'-1,1034', 2, N'a6857c73-d6e9-480c-b6e6-f15f6ad11125', N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D26D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1035, 0, -1, 0, 1, N'-1,1035', 2, N'93929b9a-93a2-4e2a-b239-d99334440a59', N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D276 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1036, 0, -1, 0, 1, N'-1,1036', 2, N'2b24165f-9782-4aa3-b459-1de4a4d21f60', N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D27E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1038, 0, -1, 0, 1, N'-1,1038', 2, N'1251c96c-185c-4e9b-93f4-b48205573cbd', N'Simple Editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D287 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1039, 0, -1, 0, 1, N'-1,1039', 2, N'06f349a9-c949-4b6a-8660-59c10451af42', N'Ultimate Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D28F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1040, 0, -1, 0, 1, N'-1,1040', 2, N'21e798da-e06e-4eda-a511-ed257f78d4fa', N'Related Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D298 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1041, 0, -1, 0, 1, N'-1,1041', 2, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D2A1 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1042, 0, -1, 0, 1, N'-1,1042', 2, N'0a452bd5-83f9-4bc3-8403-1286e13fb77e', N'Macro Container', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D2A9 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1043, 0, -1, 0, 1, N'-1,1043', 2, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A3090077D2B2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1049, 0, -1, 0, 1, N'-1,1049', 0, N'07f8855a-b262-41a9-8bfc-488a8fe79cbb', N'Base Content', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30A0026D6FC AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1050, 0, -1, 0, 1, N'-1,1050', 1, N'b717c63b-e04e-4237-b0c0-6c476229dcf1', N'Base Supplemental Data', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30A0026E1AB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1051, 0, 1049, 0, 2, N'-1,1049,1051', 34, N'16127e6d-4ef9-4e5f-a461-6e4bb5df83c6', N'Home', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30A0026EF68 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1054, 0, -1, 0, 1, N'-1,1054', 0, N'1a6b0696-7cf3-45f8-bd4c-89eedcaca342', N'Home', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30A00276C0E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1055, 0, -1, 1, 1, N'-1,1055', 1, N'b28a5bdf-f855-440f-a238-4fca07653a29', N'Main Layout', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A30B00CED9A0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1056, 0, -1, 1, 1, N'-1,1056', 1, N'70a3e2f1-dd47-41d7-9ab7-861c79c2d5ca', N'Home', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A30B00CEFD30 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1057, 0, -1, 0, 1, N'-1,1057', 2, N'76a2e750-4171-4005-834f-cb80ae940570', N'Base Folder', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30B00D723C1 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1058, 0, -1, 0, 1, N'-1,1058', 3, N'a82ae126-f0da-4510-8135-0c7b48e2d2a4', N'Base Settings', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30B00D7352D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1059, 0, 1058, 0, 2, N'-1,1058,1059', 32, N'1e5d1a3f-4a10-4e4a-ba8e-c92a9f4b7478', N'Site Settings', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30B00D7416F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1060, 0, -1, 1, 1, N'-1,1060', 1, N'48d459d4-0969-4518-800f-3450d067fa75', N'Settings', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30B00D7AF2E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1061, 0, -1, 1, 1, N'-1,1061', 2, N'10f727f1-cbd4-4861-8173-6e8f68517d30', N'Multi-Url Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A30B01067230 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1062, 0, -1, 1, 1, N'-1,1062', 2, N'44ae5134-adb7-436b-888a-06217697743c', N'Single Link', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A30B01067FD3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1063, 0, 1049, 1, 2, N'-1,1049,1063', 35, N'f5bd8ede-8fe9-4552-8f9d-5955954366a1', N'Generic', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30B01070401 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1064, 0, -1, 1, 1, N'-1,1064', 2, N'34ab70e7-1a10-417d-8b40-9173bf67008f', N'Generic', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A30B01071281 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1065, 0, 1054, 1, 2, N'-1,1054,1065', 1, N'b6d4be25-5ebe-4fb4-a32b-20bae42012da', N'About Us', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30B0107D02F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1066, 0, 1054, 1, 2, N'-1,1054,1066', 5, N'5b800205-d9df-46cf-90f5-6d4571eb29b2', N'Get Involved', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30B0108686E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1067, 0, 1054, 1, 2, N'-1,1054,1067', 3, N'0aba1cc2-ea33-4985-97a6-48992ff70973', N'Nominate a Garden', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30B0108959C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1068, 0, 1054, 1, 2, N'-1,1054,1068', 4, N'57a7a4c1-cc75-49db-b208-1b1f7994b503', N'Evaluate Your Garden', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30B0108BE64 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1069, 0, 1054, 1, 2, N'-1,1054,1069', 2, N'5af3f369-0d35-458c-b6d3-e2027165037a', N'Learn About Raingardens', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30B0108D9C9 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1070, 0, -1, 1, 1, N'-1,1070', 0, N'5a7a6b17-262e-4703-b527-ec6e2c76799a', N'Placeholder', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A30B0122720E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1071, 0, 1070, 1, 2, N'-1,1070,1071', 0, N'3775b13a-3579-47b7-83e6-8bfebd0da29b', N'Raingarden Pic', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A30B01229B42 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1072, 0, -1, 1, 1, N'-1,1072', 2, N'b9eb173a-37c5-4640-8fb6-b5b3d760c791', N'Crop Anchor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A30B012ED2B7 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1075, 0, -1, 0, 1, N'-1,1075', 4, N'e55f2d0d-868d-4739-b798-8d28fc5f18a7', N'Base Section', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30B015D3531 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1076, 0, 1065, 8, 3, N'-1,1054,1065,1076', 5, N'74c7af0e-8c0c-4cea-bf02-8df94d1227eb', N'Success Stories', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C002423DA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1077, 0, 1065, 8, 3, N'-1,1054,1065,1077', 2, N'e6b183e2-f8b3-49bc-a959-1db6939c1aa9', N'History', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00242B68 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1078, 0, 1065, 8, 3, N'-1,1054,1065,1078', 4, N'aaa37532-6002-4f36-9cfd-5cf540c32c58', N'Board of Directors', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0024310C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1079, 0, 1075, 0, 2, N'-1,1075,1079', 43, N'48d8ad2d-be20-4c31-b820-7989b9117fd6', N'Section - Content With Image', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30B015D5786 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1080, 0, 1065, 8, 3, N'-1,1054,1065,1080', 7, N'50491df9-2f9c-47a7-a984-02f88717c3cd', N'GIS Map', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0024374B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1081, 0, 1069, 8, 3, N'-1,1054,1069,1081', 1, N'98564c3a-b47f-4c49-8822-3d020c73e6c8', N'Water Pollution', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00243F2C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1082, 0, 1069, 8, 3, N'-1,1054,1069,1082', 2, N'36353fee-0686-4860-805f-b5091e816774', N'Build a Raingarden', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00244A58 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1083, 0, -1, 7, 1, N'-1,1083', 2, N'ec071a87-371e-4226-8498-fbeaa445044b', N'Image Location', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A30B015D7ACA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1084, 1, -20, 8, 1, N'-1,-20,1084', 1, N'8cc0cfe5-17fc-4c4a-b1b7-3d44edf1b2fe', N'Submit a Garden', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00247C3A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1085, 0, 1067, 8, 3, N'-1,1054,1067,1085', 1, N'92d3ee8d-9b52-4239-b85c-8948a3957705', N'Neighborhood Gardens', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00248832 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1086, 0, 1068, 8, 3, N'-1,1054,1068,1086', 1, N'a3f90375-6223-418b-9630-b3ba4c0273a0', N'Helpful Tips', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00248E93 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1087, 0, 1068, 8, 3, N'-1,1054,1068,1087', 2, N'6d08ea11-efc9-4d7d-b266-679556ed479f', N'Metrics', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00249516 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1088, 0, 1068, 8, 3, N'-1,1054,1068,1088', 3, N'e2bca644-a354-46ff-a300-ddaf39da39bb', N'Awards', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0024997B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1089, 0, 1049, 0, 2, N'-1,1049,1089', 27, N'420a54a8-93d5-408e-91ac-6147c325dd7c', N'External', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30C0024F743 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1090, 0, -1, 7, 1, N'-1,1090', 2, N'c905ac5c-e211-477c-a7ad-a473235178b7', N'Image Size', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A30B015E2140 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1091, 0, 1067, 8, 3, N'-1,1054,1067,1091', 0, N'd7671b73-e18e-4440-81f8-c52192200f83', N'Submit a Garden', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0025B945 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1092, 0, 1057, 0, 2, N'-1,1057,1092', 5, N'ed48948a-fe57-41af-8fff-697e0af9facb', N'Sections Folder', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30B0162EC70 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1093, 0, 1054, 1, 2, N'-1,1054,1093', 0, N'53df512c-331a-40c4-a78c-cd3ee039a2ef', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30B01644AE7 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1094, 0, 1097, 1, 4, N'-1,1054,1065,1097,1094', 1, N'1da96705-c271-44b8-b497-f516985ee0ac', N'Rain Garden', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30B016489EC AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1095, 0, 1075, 0, 2, N'-1,1075,1095', 16, N'033127fd-6ebd-4816-9f07-d2d2a2f01ebf', N'Section - Quote', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30C00387EC7 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1096, 0, 1075, 0, 2, N'-1,1075,1096', 40, N'1b0b649b-40eb-45ba-8a11-d959983073c9', N'Section - Image Display', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30C0039217C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1097, 0, 1065, 8, 3, N'-1,1054,1065,1097', 0, N'3dda86dd-b9ed-4bd0-bdf0-c64aad086df0', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00394C1A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1098, 0, 1069, 8, 3, N'-1,1054,1069,1098', 0, N'98d6e763-565a-47e1-9b21-a79cfd5a646b', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00395FDE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1099, 0, 1076, 8, 4, N'-1,1054,1065,1076,1099', 0, N'0e5972fd-9152-47a2-9d1f-8580dd16b6c7', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00397466 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1100, 0, 1077, 8, 4, N'-1,1054,1065,1077,1100', 0, N'74bc2c33-ecc7-40d7-8cb4-c1e505427779', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00397E67 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1101, 0, 1078, 8, 4, N'-1,1054,1065,1078,1101', 0, N'9674f621-80b3-4b62-83ed-0c726e03596b', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0039832B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1102, 0, 1080, 8, 4, N'-1,1054,1065,1080,1102', 0, N'a16f6568-d38d-4a2d-88d4-9459946d9802', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0039899C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1103, 0, 1081, 8, 4, N'-1,1054,1069,1081,1103', 0, N'62f9f6e3-e0a7-4f23-a38e-625376756425', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00398ED0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1104, 0, 1082, 8, 4, N'-1,1054,1069,1082,1104', 0, N'b116131e-d9d3-4a28-bc8f-3ae67b107380', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C003994E6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1105, 0, 1085, 8, 4, N'-1,1054,1067,1085,1105', 0, N'c713c691-57d3-46c0-8236-935603ff7aff', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00399C3D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1106, 0, 1086, 8, 4, N'-1,1054,1068,1086,1106', 0, N'8cbf2ff3-66ac-4bac-861d-97914bcc2d7c', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0039A1E3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1107, 0, 1068, 8, 3, N'-1,1054,1068,1107', 0, N'71c015db-cd5a-4868-9cdf-0495d76209a6', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0039A6D3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1108, 0, 1087, 8, 4, N'-1,1054,1068,1087,1108', 0, N'7a3f4ea8-b1c5-4483-900c-f72cc316de87', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0039AE46 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1109, 0, 1088, 8, 4, N'-1,1054,1068,1088,1109', 0, N'4f78099b-9355-40ae-9367-e13a5c9bc62f', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0039B46D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1110, 0, 1066, 8, 3, N'-1,1054,1066,1110', 0, N'afb4fe02-49c6-4951-8848-58af46af05c5', N'_Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0039C1D6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1111, 0, 1075, 0, 2, N'-1,1075,1111', 46, N'5a3bc2ce-66ec-4a57-a85d-1c628f4f5e9b', N'Section - Intro', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30C003B9C60 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1112, 0, 1075, 0, 2, N'-1,1075,1112', 48, N'565ab909-99fe-4ce8-9319-8a6bc1691915', N'Section - Call to Action', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30C003BC5DF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1114, 0, -1, 8, 1, N'-1,1114', 2, N'0a394690-bf25-4957-a8cc-4cb0370c0dde', N'Alignment', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A30C00402149 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1115, 0, 1093, 8, 3, N'-1,1054,1093,1115', 1, N'09b519d4-8983-47ec-b2cc-509447681e5b', N'Intro', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0046879E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1116, 0, 1093, 8, 3, N'-1,1054,1093,1116', 2, N'089ec2d8-cf04-4e53-b906-11b604cc9e50', N'Image Display', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C004B0E2E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1117, 0, 1093, 8, 3, N'-1,1054,1093,1117', 3, N'a324d1a8-7a45-4fda-9538-c5606061a1a1', N'Call to Action', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C004B1826 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1118, 0, 1093, 8, 3, N'-1,1054,1093,1118', 4, N'2bae8c42-e159-451f-bee5-710f6bd38b5e', N'Quote', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C004B21B2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1119, 0, 1093, 1, 3, N'-1,1054,1093,1119', 4, N'0ad653dc-460c-4e00-a0d3-c0d6ab91071b', N'Rain Garden', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00596F9F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1120, 0, 1075, 0, 2, N'-1,1075,1120', 44, N'c90ac7f9-57a3-4c86-8235-310796a66162', N'Section - Rich Text', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A30C005A3CBB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1121, 0, 1098, 1, 4, N'-1,1054,1069,1098,1121', 1, N'e1690e66-3a99-4e7c-94dc-e9e45d062778', N'Rain Garden', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00081CCD AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1122, 0, 1093, 8, 3, N'-1,1054,1093,1122', 5, N'f334a478-cc0c-43fa-be22-0aeebf178bc5', N'Rich Text', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C005B0B8A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1123, 0, 1098, 1, 4, N'-1,1054,1069,1098,1123', 0, N'17e98ec8-176f-4e94-9f8e-5416febe6335', N'Rich Text Section', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C000B62BD AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1124, 0, 1098, 1, 4, N'-1,1054,1069,1098,1124', 2, N'9edfa621-6ff0-4fba-9903-5cca7d7c32ac', N'Image Right', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C000E09B0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1125, 0, 1098, 1, 4, N'-1,1054,1069,1098,1125', 3, N'462e6365-91d3-4d68-819f-4e5f86bf942b', N'Quote', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C000E502E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1126, 0, 1098, 1, 4, N'-1,1054,1069,1098,1126', 4, N'9d5736b2-9f99-4d0f-bcf3-2896eadee45f', N'Full Image', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C000EAB51 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1127, 0, 1098, 1, 4, N'-1,1054,1069,1098,1127', 5, N'be4c0fb7-3711-4c07-be1d-303d57992048', N'Two Column Images', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C000EC58F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1128, 0, 1065, 2, 3, N'-1,1054,1065,1128', 1, N'6c418749-3d59-432e-8b3e-569e722701d0', N'Mission & Goals', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00634640 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1129, 0, 1065, 2, 3, N'-1,1054,1065,1129', 3, N'bd7d024a-6d91-40cb-ad16-f8a0945921fa', N'Who We Are', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0063AF26 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1130, 0, 1065, 2, 3, N'-1,1054,1065,1130', 6, N'fd534ce2-0471-4853-850f-0e79a4f00b13', N'Fast Facts', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0063CCCB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1131, 0, 1128, 2, 4, N'-1,1054,1065,1128,1131', 0, N'656e3bb1-9253-4161-8728-54c73dd47ff3', N'Sections', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C006412C2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1132, 1, -20, 2, 1, N'-1,-20,1132', 2, N'a51d337a-12f1-46ff-bc3b-2ab08307b354', N'Mission', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C00649510 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1133, 0, 1131, 2, 5, N'-1,1054,1065,1128,1131,1133', 0, N'1776fca0-c35c-42ef-9c0b-9ca3f720e52c', N'Mission', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C0064F600 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1134, 0, 1131, 2, 5, N'-1,1054,1065,1128,1131,1134', 1, N'abaf976b-0976-49a5-baa5-477a77bdbb45', N'Goals', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A30C006504DA AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 04/13/2014 01:13:29 ******/
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[NodeId] [int] NOT NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE NONCLUSTERED INDEX [IX_umbracoLog] ON [dbo].[umbracoLog] 
(
	[NodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] ON
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1, 0, 1045, CAST(0x0000A30900E03917 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2, 0, 1045, CAST(0x0000A30900E05F2A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (3, 0, 1045, CAST(0x0000A30900E06794 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (4, 0, 1046, CAST(0x0000A30900E06DE0 AS DateTime), N'New', N'Content ''Test'' was created with Id 1046')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (5, 0, 1046, CAST(0x0000A30900E06E1D AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (6, 0, 1046, CAST(0x0000A30900E0702A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (7, 0, 1046, CAST(0x0000A30900E0832A AS DateTime), N'UnPublish', N'UnPublish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (8, 0, 1046, CAST(0x0000A30900E08354 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (9, 0, 1046, CAST(0x0000A30900E083A7 AS DateTime), N'Delete', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (10, 0, 1046, CAST(0x0000A309008E4AC7 AS DateTime), N'Delete', N'Delete Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (11, 0, -1, CAST(0x0000A309008E4AD4 AS DateTime), N'Delete', N'Delete Content of Type 1045 performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (12, 0, 1045, CAST(0x0000A309008E4B84 AS DateTime), N'Delete', N'Delete ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (13, 0, -1, CAST(0x0000A30900E4039E AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (14, 0, 1047, CAST(0x0000A30900E9AA1C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (15, 0, -1, CAST(0x0000A30900E9B681 AS DateTime), N'Delete', N'Delete Content of Type 1047 performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (16, 0, 1047, CAST(0x0000A30900E9B698 AS DateTime), N'Delete', N'Delete ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (17, 0, 1048, CAST(0x0000A309014B4562 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (18, 0, -1, CAST(0x0000A309014B6AB1 AS DateTime), N'Delete', N'Delete Content of Type 1048 performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (19, 0, 1048, CAST(0x0000A309014B6AC9 AS DateTime), N'Delete', N'Delete ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (20, 0, 1049, CAST(0x0000A30A0026D72B AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (21, 0, 1050, CAST(0x0000A30A0026E1B9 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (22, 0, 1051, CAST(0x0000A30A0026EF9C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (23, 0, 1051, CAST(0x0000A30A00270043 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (24, 0, 1051, CAST(0x0000A30A00270852 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (25, 0, 1051, CAST(0x0000A30A0027611C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (26, 0, 1054, CAST(0x0000A30A00276C34 AS DateTime), N'New', N'Content ''Home'' was created with Id 1054')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (27, 0, 1054, CAST(0x0000A30A00276CB7 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (28, 0, 1054, CAST(0x0000A30A00276ED8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (29, 0, 1054, CAST(0x0000A30A00277240 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (30, 0, 1054, CAST(0x0000A30A0028BCDD AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (31, 0, 1054, CAST(0x0000A30A0028C03E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (32, 0, 1051, CAST(0x0000A30A002953E5 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (33, 0, 1051, CAST(0x0000A30A00295BFD AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (34, 0, 1054, CAST(0x0000A30A002965F1 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (35, 0, 1054, CAST(0x0000A30A0029690D AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (36, 1, 1051, CAST(0x0000A30B00CEC331 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (37, 0, 1051, CAST(0x0000A30B00D08156 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (38, 1, 1054, CAST(0x0000A30B0122F337 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (39, 1, 1054, CAST(0x0000A30B00D0A211 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (40, 0, 1057, CAST(0x0000A30B00D7245D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (41, 0, 1058, CAST(0x0000A30B00D73581 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (42, 0, 1059, CAST(0x0000A30B00D741D4 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (43, 0, 1059, CAST(0x0000A30B00D75CBC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (44, 1, 1059, CAST(0x0000A30B00D77C5C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (45, 0, 1059, CAST(0x0000A30B00D79D3C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (46, 1, 1054, CAST(0x0000A30B012A0CD1 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (47, 1, 1060, CAST(0x0000A30B00D7AFAA AS DateTime), N'New', N'Content ''Settings'' was created with Id 1060')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (48, 1, 1060, CAST(0x0000A30B00D7B193 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (49, 1, 1060, CAST(0x0000A30B012A1902 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (50, 1, 1060, CAST(0x0000A30B00D7BC2E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (51, 1, 1049, CAST(0x0000A30B00DC5BAF AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (52, 1, 1049, CAST(0x0000A30B00DC6442 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (53, 0, 1051, CAST(0x0000A30B00DC9D30 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (54, 1, 1060, CAST(0x0000A30B012F09A4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (55, 1, 1054, CAST(0x0000A30B012F0B3B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (56, 1, 1054, CAST(0x0000A30B00DCB802 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (57, 0, 1049, CAST(0x0000A30B00E36F24 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (58, 0, 1049, CAST(0x0000A30B00E3CBCC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (59, 0, 1049, CAST(0x0000A30B00E3F143 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (60, 1, 1054, CAST(0x0000A30B01366FAE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (61, 1, 1054, CAST(0x0000A30B013D57B2 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (62, 1, 1054, CAST(0x0000A30B00EB0151 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (63, 1, 1054, CAST(0x0000A30B0140EC57 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (64, 8, 1054, CAST(0x0000A30B0141D65A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (65, 0, 1051, CAST(0x0000A30B0106E001 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (66, 0, 1063, CAST(0x0000A30B0107046A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (67, 0, 1063, CAST(0x0000A30B01072C67 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (68, 0, 1051, CAST(0x0000A30B01074115 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (69, 1, 1065, CAST(0x0000A30B0107D0C0 AS DateTime), N'New', N'Content ''About Us'' was created with Id 1065')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (70, 1, 1065, CAST(0x0000A30B0107D35A AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (71, 1, 1065, CAST(0x0000A30B015A424B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (72, 0, 1063, CAST(0x0000A30B010822FB AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (73, 0, -1, CAST(0x0000A30B01084212 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (74, 0, 1063, CAST(0x0000A30B01084232 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (75, 1, 1066, CAST(0x0000A30B01086901 AS DateTime), N'New', N'Content ''Get Started'' was created with Id 1066')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (76, 1, 1066, CAST(0x0000A30B01086A40 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (77, 1, 1066, CAST(0x0000A30B015AD30F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (78, 1, 1066, CAST(0x0000A30B01087B74 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (79, 1, 1065, CAST(0x0000A30B015AE600 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (80, 1, 1065, CAST(0x0000A30B010884D7 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (81, 1, 1067, CAST(0x0000A30B01089639 AS DateTime), N'New', N'Content ''Nominate a Garden'' was created with Id 1067')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (82, 1, 1067, CAST(0x0000A30B01089773 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (83, 1, 1067, CAST(0x0000A30B015AFFDE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (84, 1, 1067, CAST(0x0000A30B0108A7FC AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (85, 1, 1068, CAST(0x0000A30B0108BEFC AS DateTime), N'New', N'Content ''Evaluate'' was created with Id 1068')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (86, 1, 1068, CAST(0x0000A30B0108C056 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (87, 1, 1068, CAST(0x0000A30B015B28B4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (88, 1, 1069, CAST(0x0000A30B0108DA83 AS DateTime), N'New', N'Content ''Learn'' was created with Id 1069')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (89, 1, 1069, CAST(0x0000A30B0108DBCD AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (90, 1, 1069, CAST(0x0000A30B015B4466 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (91, 1, 1069, CAST(0x0000A30B0108E3F9 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (92, 1, 1069, CAST(0x0000A30B0108ECF7 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (93, 1, 1068, CAST(0x0000A30B015B56E1 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (94, 1, 1068, CAST(0x0000A30B0108FD66 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (95, 0, 0, CAST(0x0000A30B01091E33 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (96, 1, 1054, CAST(0x0000A30B015B9241 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (97, 1, 1069, CAST(0x0000A30B015B92B6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (98, 1, 1066, CAST(0x0000A30B015B967F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (99, 1, 1067, CAST(0x0000A30B015B9C23 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (100, 1, 1067, CAST(0x0000A30B01093D96 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
print 'Processed 100 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (101, 1, 1054, CAST(0x0000A30B015BABCF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (102, 0, 1051, CAST(0x0000A30B01095CD7 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (103, 1, 1054, CAST(0x0000A30B015BCB5D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (104, 1, 1054, CAST(0x0000A30B0109CA55 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (105, 8, 1060, CAST(0x0000A30B01714566 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (106, 8, 1054, CAST(0x0000A30B01717C00 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (107, 8, 1060, CAST(0x0000A30B0171E1A7 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (108, 8, 1060, CAST(0x0000A30B0171E24C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (109, 0, 1059, CAST(0x0000A30B0171EDB9 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (110, 0, 1059, CAST(0x0000A30B0171F79A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (111, 0, 1059, CAST(0x0000A30B017202FC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (112, 8, 1054, CAST(0x0000A30B01727B5D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (113, 8, 1060, CAST(0x0000A30B017280F5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (114, 0, 1049, CAST(0x0000A30B0174C43D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (115, 8, 1054, CAST(0x0000A30B0174C970 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (116, 1, 1070, CAST(0x0000A30B01227357 AS DateTime), N'New', N'Media ''Placeholder'' was created with Id 1070')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (117, 0, 1049, CAST(0x0000A30B0174DA58 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (118, 1, 1071, CAST(0x0000A30B01229C02 AS DateTime), N'New', N'Media ''Raingarden Pic'' was created with Id 1071')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (119, 1, 1071, CAST(0x0000A30B0122A501 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (120, 0, 0, CAST(0x0000A30B0122B502 AS DateTime), N'Sort', N'Sorting Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (121, 1, 1054, CAST(0x0000A30B01790CDC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (122, 0, 1049, CAST(0x0000A30B017CE3D7 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (123, 8, 1054, CAST(0x0000A30B017CEAB1 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (124, 8, 1060, CAST(0x0000A30B017D6753 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (125, 8, 1054, CAST(0x0000A30B017D6972 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (126, 8, 1069, CAST(0x0000A30B017D88F5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (127, 8, 1054, CAST(0x0000A30B017D8C99 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (128, 8, 1069, CAST(0x0000A30B017D8EAA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (129, 0, 1051, CAST(0x0000A30B017DEBEA AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (130, 0, -1, CAST(0x0000A30B017E1444 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (131, 0, 1049, CAST(0x0000A30B017E1452 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (132, 0, 1049, CAST(0x0000A30B017E15AD AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (133, 8, 1054, CAST(0x0000A30B017E1931 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (134, 8, 1054, CAST(0x0000A30B017E1DF0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (135, 0, 1051, CAST(0x0000A30B017E36A0 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (136, 0, 1051, CAST(0x0000A30B017E3F51 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (137, 8, 1054, CAST(0x0000A30B017E43CB AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (138, 8, 1054, CAST(0x0000A30B017E5763 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (139, 0, 1051, CAST(0x0000A30B012C5C54 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (140, 1, 1054, CAST(0x0000A30B017ECCE7 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (141, 1, 1054, CAST(0x0000A30B012C76B8 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (142, 8, 1054, CAST(0x0000A30B017FA9DA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (143, 0, 1032, CAST(0x0000A30B012F831D AS DateTime), N'Save', N'Save MediaType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (144, 1, 1071, CAST(0x0000A30B01300528 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (145, 1, 1071, CAST(0x0000A30B01302C61 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (146, 1, 1071, CAST(0x0000A30B01303AAB AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (147, 1, 1071, CAST(0x0000A30B0131810A AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (148, 7, 1054, CAST(0x0000A30C00020E0E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (149, 8, 1066, CAST(0x0000A30C000336BF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (150, 8, 1069, CAST(0x0000A30C00037CCE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (151, 8, 1066, CAST(0x0000A30C00037E0C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (152, 8, 1067, CAST(0x0000A30C00037FAD AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (153, 1, 1054, CAST(0x0000A30C0003C72A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (154, 1, 1054, CAST(0x0000A30B013CFC71 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (155, 1, 1054, CAST(0x0000A30C0003E570 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (156, 7, 1060, CAST(0x0000A30C0003F976 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (157, 0, 1054, CAST(0x0000A30C0003FC57 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (158, 0, 1060, CAST(0x0000A30C00040913 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (159, 0, 1054, CAST(0x0000A30C00040BC6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (160, 0, 1059, CAST(0x0000A30B013DA719 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (161, 0, 1059, CAST(0x0000A30B013DB7BD AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (162, 7, 1060, CAST(0x0000A30C00049F97 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (163, 0, 1051, CAST(0x0000A30B013DFEDC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (164, 0, 1054, CAST(0x0000A30C0004E1A6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (165, 0, 1054, CAST(0x0000A30C0004E3B3 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (166, 0, 1054, CAST(0x0000A30B013E126D AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (167, 7, 1060, CAST(0x0000A30C00050838 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (168, 7, 1060, CAST(0x0000A30C000534CC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (169, 7, 1060, CAST(0x0000A30C00053600 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (170, 0, 1060, CAST(0x0000A30C0005594B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (171, 1, 1060, CAST(0x0000A30C00057205 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (172, 1, 1060, CAST(0x0000A30C00057696 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (173, 1, 1060, CAST(0x0000A30C0005803D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (174, 7, 1060, CAST(0x0000A30C000587F4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (175, 7, 1060, CAST(0x0000A30C00058C6C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (176, 7, 1054, CAST(0x0000A30C00058CCD AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (177, 1, 1060, CAST(0x0000A30C00058E5B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (178, 7, 1060, CAST(0x0000A30C000594BA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (179, 7, 1060, CAST(0x0000A30C00059889 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (180, 7, 1060, CAST(0x0000A30C0005B10B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (181, 1, 1060, CAST(0x0000A30C0005C69D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (182, 0, 1059, CAST(0x0000A30B013F1098 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (183, 1, 1060, CAST(0x0000A30C0005FB32 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (184, 1, 1060, CAST(0x0000A30C0005FC73 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (185, 7, 1060, CAST(0x0000A30C000605E5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (186, 1, 1060, CAST(0x0000A30C00060A31 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (187, 0, 1059, CAST(0x0000A30B013F3C46 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (188, 0, 1059, CAST(0x0000A30B013F3FB4 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (189, 0, 1059, CAST(0x0000A30B013F4068 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (190, 7, 1060, CAST(0x0000A30C00061E60 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (191, 0, 1059, CAST(0x0000A30B013F63C0 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (192, 1, 1060, CAST(0x0000A30C000653F5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (193, 0, 1060, CAST(0x0000A30C00066A95 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (194, 7, 1060, CAST(0x0000A30C00066F0E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (195, 7, 1060, CAST(0x0000A30C0006704D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (196, 0, 1060, CAST(0x0000A30C00068569 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (197, 0, 1060, CAST(0x0000A30C000686E8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (198, 0, 1054, CAST(0x0000A30C000687DC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (199, 0, -1, CAST(0x0000A30B013FC316 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (200, 0, 1059, CAST(0x0000A30B013FC33D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (201, 0, 1054, CAST(0x0000A30C0006B50A AS DateTime), N'Open', N'')
GO
print 'Processed 200 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (202, 0, 1054, CAST(0x0000A30C0006B5A3 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (203, 7, 1060, CAST(0x0000A30B01410C7A AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (204, 0, 1059, CAST(0x0000A30B01410FF6 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (205, 0, 1059, CAST(0x0000A30B01411B45 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (206, 7, 1060, CAST(0x0000A30B014122A1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (207, 0, -1, CAST(0x0000A30B014134F2 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (208, 0, 1051, CAST(0x0000A30B01413512 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (209, 0, 1054, CAST(0x0000A30C00081F5B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (210, 0, 1060, CAST(0x0000A30C00083E1D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (211, 0, 1060, CAST(0x0000A30B01416B26 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (212, 7, 1060, CAST(0x0000A30C0008FEBC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (213, 0, 1059, CAST(0x0000A30B01422F99 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (214, 7, 1060, CAST(0x0000A30C00090E91 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (215, 7, 1060, CAST(0x0000A30C00090FB8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (216, 7, 1060, CAST(0x0000A30C00098838 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (217, 7, 1060, CAST(0x0000A30B0142B366 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (218, 0, 1060, CAST(0x0000A30C0009B8BD AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (219, 0, 1060, CAST(0x0000A30B01439D04 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (220, 8, 1060, CAST(0x0000A30C000C2EEE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (221, 8, 1060, CAST(0x0000A30C000C4914 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (222, 8, 1060, CAST(0x0000A30C000C5303 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (223, 0, 1059, CAST(0x0000A30B014673F6 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (224, 7, 1060, CAST(0x0000A30C000D5BCA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (225, 7, 1060, CAST(0x0000A30C000D76A3 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (226, 0, 1059, CAST(0x0000A30B0146A874 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (227, 0, 1059, CAST(0x0000A30B0146BC80 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (228, 7, 1060, CAST(0x0000A30C000D9DBF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (229, 7, 1060, CAST(0x0000A30C000D9EEB AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (230, 7, 1060, CAST(0x0000A30B0146DE18 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (231, 7, 1060, CAST(0x0000A30B0146EBB5 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (232, 7, 1065, CAST(0x0000A30C001130C1 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (233, 7, 1068, CAST(0x0000A30C0011311E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (234, 7, 1067, CAST(0x0000A30C001131F6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (235, 7, 1066, CAST(0x0000A30C00113294 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (236, 7, 1069, CAST(0x0000A30C00113302 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (237, 7, 1066, CAST(0x0000A30C00113743 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (238, 7, 1067, CAST(0x0000A30C00114F9E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (239, 7, 1054, CAST(0x0000A30C00116CE2 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (240, 7, 1065, CAST(0x0000A30C00117D39 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (241, 7, 1069, CAST(0x0000A30C00131472 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (242, 7, 1069, CAST(0x0000A30C00146897 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (243, 7, 1069, CAST(0x0000A30C001468B5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (244, 7, 1069, CAST(0x0000A30C00148236 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (245, 7, 1069, CAST(0x0000A30C001483D1 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (246, 0, 1063, CAST(0x0000A30B014DC9C0 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (247, 7, 1069, CAST(0x0000A30C0014AB87 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (248, 7, 1069, CAST(0x0000A30B014DDA24 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (249, 7, 1069, CAST(0x0000A30B014E7168 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (250, 7, 1060, CAST(0x0000A30C001560F7 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (251, 7, 1060, CAST(0x0000A30B014E8D90 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (252, 7, 1060, CAST(0x0000A30B014E9724 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (253, 7, 1060, CAST(0x0000A30C00164721 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (254, 7, 1060, CAST(0x0000A30B014F7174 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (255, 7, 1060, CAST(0x0000A30B014F7452 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (256, 7, 1060, CAST(0x0000A30B014F7A5F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (257, 0, 1060, CAST(0x0000A30C00184626 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (258, 0, 1060, CAST(0x0000A30C00184702 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (259, 8, 1060, CAST(0x0000A30C0018776B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (260, 0, 1060, CAST(0x0000A30C00192E48 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (261, 0, 1060, CAST(0x0000A30B01525C2A AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (262, 8, 1059, CAST(0x0000A30C0019790B AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (263, 0, 1059, CAST(0x0000A30C0019911A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (264, 0, 1059, CAST(0x0000A30C0019A689 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (265, 0, 1059, CAST(0x0000A30C0019AED3 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (266, 0, 1059, CAST(0x0000A30C0019B8FF AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (267, 0, -1, CAST(0x0000A30C0019FB39 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (268, 0, 1059, CAST(0x0000A30C0019FB3D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (269, 8, 1060, CAST(0x0000A30C001A0BB1 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (270, 8, 1060, CAST(0x0000A30C001A0E1A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (271, 8, 1060, CAST(0x0000A30C001A372C AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (272, 8, 1060, CAST(0x0000A30C001A3DB9 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (273, 8, 1054, CAST(0x0000A30C001A445F AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (274, 0, -1, CAST(0x0000A30C001A9FBD AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (275, 0, 1059, CAST(0x0000A30C001A9FC1 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (276, 8, 1054, CAST(0x0000A30C001AE253 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (277, 8, 1060, CAST(0x0000A30C001AE3F6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (278, 8, 1060, CAST(0x0000A30C001B880C AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (279, 8, 1060, CAST(0x0000A30C001B8C40 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (280, 8, 1060, CAST(0x0000A30C001D93AA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (281, 8, 1060, CAST(0x0000A30C001F541A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (282, 0, 1063, CAST(0x0000A30B0158E28D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (283, 7, 1069, CAST(0x0000A30C001FC5E4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (284, 8, 1054, CAST(0x0000A30C00235FB0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (285, 8, 1069, CAST(0x0000A30C0023621E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (286, 0, 0, CAST(0x0000A30C00238789 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (287, 8, 1069, CAST(0x0000A30C0023990F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (288, 8, 1069, CAST(0x0000A30C0023A70A AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (289, 8, 1066, CAST(0x0000A30C0023A884 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (290, 8, 1066, CAST(0x0000A30C0023B193 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (291, 8, 1067, CAST(0x0000A30C0023B36E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (292, 8, 1067, CAST(0x0000A30C0023BAA0 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (293, 8, 1068, CAST(0x0000A30C0023BBF3 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (294, 8, 1068, CAST(0x0000A30C0023C637 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (295, 8, 1054, CAST(0x0000A30C0023FDA1 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (296, 8, 1054, CAST(0x0000A30C0024088D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (297, 0, 1075, CAST(0x0000A30B015D3599 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (298, 0, 1063, CAST(0x0000A30C002419DF AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (299, 8, 1054, CAST(0x0000A30C00241BA4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (300, 8, 1076, CAST(0x0000A30C002423EC AS DateTime), N'New', N'Content ''Success Stories'' was created with Id 1076')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (301, 8, 1076, CAST(0x0000A30C00242417 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (302, 8, 1076, CAST(0x0000A30C002424A8 AS DateTime), N'Open', N'')
GO
print 'Processed 300 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (303, 8, 1077, CAST(0x0000A30C00242B76 AS DateTime), N'New', N'Content ''News'' was created with Id 1077')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (304, 8, 1077, CAST(0x0000A30C00242BA5 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (305, 8, 1077, CAST(0x0000A30C00242C32 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (306, 8, 1078, CAST(0x0000A30C00243152 AS DateTime), N'New', N'Content ''Reports'' was created with Id 1078')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (307, 8, 1078, CAST(0x0000A30C00243186 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (308, 8, 1078, CAST(0x0000A30C00243229 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (309, 0, 1079, CAST(0x0000A30B015D580E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (310, 8, 1080, CAST(0x0000A30C00243763 AS DateTime), N'New', N'Content ''GIS Map'' was created with Id 1080')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (311, 8, 1080, CAST(0x0000A30C00243793 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (312, 8, 1080, CAST(0x0000A30C00243824 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (313, 8, 1081, CAST(0x0000A30C00243F3A AS DateTime), N'New', N'Content ''Water Pollution'' was created with Id 1081')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (314, 8, 1081, CAST(0x0000A30C00243F80 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (315, 8, 1081, CAST(0x0000A30C00244011 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (316, 8, 1082, CAST(0x0000A30C00244A66 AS DateTime), N'New', N'Content ''Build a Raingarden'' was created with Id 1082')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (317, 8, 1082, CAST(0x0000A30C00244A9A AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (318, 8, 1082, CAST(0x0000A30C00244B31 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (319, 0, 0, CAST(0x0000A30C002470F7 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (320, 8, 1084, CAST(0x0000A30C00247C80 AS DateTime), N'New', N'Content ''Submit a Garden'' was created with Id 1084')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (321, 8, 1084, CAST(0x0000A30C00247CE3 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (322, 8, 1084, CAST(0x0000A30C00247D99 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (323, 8, 1085, CAST(0x0000A30C00248845 AS DateTime), N'New', N'Content ''Neighborhood Gardens'' was created with Id 1085')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (324, 8, 1085, CAST(0x0000A30C0024887D AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (325, 8, 1085, CAST(0x0000A30C00248909 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (326, 8, 1086, CAST(0x0000A30C00248EA6 AS DateTime), N'New', N'Content ''Helpful Tips'' was created with Id 1086')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (327, 8, 1086, CAST(0x0000A30C00248EE8 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (328, 8, 1086, CAST(0x0000A30C00248F76 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (329, 8, 1087, CAST(0x0000A30C00249529 AS DateTime), N'New', N'Content ''Metrics'' was created with Id 1087')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (330, 8, 1087, CAST(0x0000A30C00249553 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (331, 8, 1087, CAST(0x0000A30C002495E4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (332, 8, 1088, CAST(0x0000A30C0024998E AS DateTime), N'New', N'Content ''Awards'' was created with Id 1088')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (333, 8, 1088, CAST(0x0000A30C002499C1 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (334, 8, 1088, CAST(0x0000A30C00249A4F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (335, 0, 1089, CAST(0x0000A30C0024F751 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (336, 0, -1, CAST(0x0000A30C00252835 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (337, 0, 1089, CAST(0x0000A30C0025283A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (338, 0, 1089, CAST(0x0000A30C00257C43 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (339, 8, 1088, CAST(0x0000A30C00257E8B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (340, 0, 1063, CAST(0x0000A30C00259B47 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (341, 0, 1089, CAST(0x0000A30C0025A1B5 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (342, 8, 1088, CAST(0x0000A30C0025A66E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (343, 0, 1084, CAST(0x0000A30C0025B249 AS DateTime), N'UnPublish', N'UnPublish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (344, 0, 1084, CAST(0x0000A30C0025B267 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (345, 8, 1084, CAST(0x0000A30C0025B273 AS DateTime), N'Delete', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (346, 8, 1091, CAST(0x0000A30C0025B953 AS DateTime), N'New', N'Content ''Submit a Garden'' was created with Id 1091')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (347, 8, 1091, CAST(0x0000A30C0025B97D AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (348, 8, 1091, CAST(0x0000A30C0025BA08 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (349, 8, 1091, CAST(0x0000A30C0025DC90 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (350, 8, 1091, CAST(0x0000A30C0025E2EB AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (351, 8, 1085, CAST(0x0000A30C0025E435 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (352, 8, 1054, CAST(0x0000A30C0025E9BA AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (353, 8, 1091, CAST(0x0000A30C0025EF0E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (354, 8, 1069, CAST(0x0000A30C0025EFEE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (355, 8, 1085, CAST(0x0000A30C0025F1DB AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (356, 7, 1075, CAST(0x0000A30B015F15EE AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (357, 8, 1091, CAST(0x0000A30C0025F2A9 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (358, 0, 1075, CAST(0x0000A30B015F1ACD AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (359, 0, 0, CAST(0x0000A30C0025FBFA AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (360, 0, 1079, CAST(0x0000A30B015F7144 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (361, 0, 1079, CAST(0x0000A30B015FD33A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (362, 0, 1079, CAST(0x0000A30B015FF611 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (363, 0, 1079, CAST(0x0000A30B0160632E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (364, 0, 1079, CAST(0x0000A30B01607C33 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (365, 7, 1069, CAST(0x0000A30C002774EC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (366, 7, 1065, CAST(0x0000A30C0027A04B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (367, 0, 1092, CAST(0x0000A30B0162ECE8 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (368, 0, 1092, CAST(0x0000A30B016301D1 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (369, 0, 1079, CAST(0x0000A30B0163326E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (370, 0, 1079, CAST(0x0000A30B01639221 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (371, 0, -1, CAST(0x0000A30B0163C71E AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (372, 0, 1079, CAST(0x0000A30B0163C742 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (373, 0, 1092, CAST(0x0000A30B0163D2CB AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (374, 0, 1063, CAST(0x0000A30B0163F119 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (375, 0, 1051, CAST(0x0000A30B0163FE7C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (376, 1, 1093, CAST(0x0000A30B01644B59 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1093')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (377, 1, 1093, CAST(0x0000A30B01644C4C AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (378, 1, 1093, CAST(0x0000A30C002B3242 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (379, 1, 1093, CAST(0x0000A30B01645EB1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (380, 0, 0, CAST(0x0000A30B016470B9 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (381, 1, 1094, CAST(0x0000A30B01648A88 AS DateTime), N'New', N'Content ''Rain Garden'' was created with Id 1094')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (382, 1, 1094, CAST(0x0000A30B01648BE6 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (383, 1, 1094, CAST(0x0000A30C002B72BE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (384, 1, 1094, CAST(0x0000A30B0164AC0B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (385, 1, 1094, CAST(0x0000A30B0164B6DF AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (386, 0, 1079, CAST(0x0000A30B016522CE AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (387, 1, 1094, CAST(0x0000A30C002C198E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (388, 1, 1094, CAST(0x0000A30B01653F0F AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (389, 1, 1093, CAST(0x0000A30C00341385 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (390, 0, 1054, CAST(0x0000A30B016FC4E1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (391, 0, 1054, CAST(0x0000A30B016FCB30 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (392, 0, 1054, CAST(0x0000A30B016FDA14 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (393, 7, 1065, CAST(0x0000A30C003849DC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (394, 8, 1094, CAST(0x0000A30C00384B23 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (395, 7, 1054, CAST(0x0000A30C003850D8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (396, 0, 1095, CAST(0x0000A30C00387ED5 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (397, 7, 1054, CAST(0x0000A30B0171A95A AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (398, 0, 1051, CAST(0x0000A30B0171AEB4 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (399, 0, -1, CAST(0x0000A30C003896BB AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (400, 0, 1095, CAST(0x0000A30C003896C4 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (401, 0, 1095, CAST(0x0000A30C0038A641 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (402, 0, 1095, CAST(0x0000A30C0038DA27 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (403, 0, 1095, CAST(0x0000A30C0038EBE6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
print 'Processed 400 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (404, 0, 1095, CAST(0x0000A30C0038F266 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (405, 0, 1095, CAST(0x0000A30C0038FAB9 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (406, 0, 1095, CAST(0x0000A30C003901A6 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (407, 0, 1054, CAST(0x0000A30B01723447 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (408, 0, 1051, CAST(0x0000A30B01722C88 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (409, 0, 1096, CAST(0x0000A30C0039218F AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (410, 1, 1054, CAST(0x0000A30C00392B3C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (411, 0, 1096, CAST(0x0000A30C003931F6 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (412, 0, 1092, CAST(0x0000A30C00393A20 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (413, 8, 1094, CAST(0x0000A30C00393ECC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (414, 7, 1054, CAST(0x0000A30C00394136 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (415, 8, 1097, CAST(0x0000A30C00394C28 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1097')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (416, 8, 1097, CAST(0x0000A30C00394C57 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (417, 8, 1097, CAST(0x0000A30C00394D31 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (418, 0, 0, CAST(0x0000A30C00395389 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (419, 8, 1098, CAST(0x0000A30C00395FEC AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1098')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (420, 8, 1098, CAST(0x0000A30C00396003 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (421, 8, 1098, CAST(0x0000A30C003960C6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (422, 0, 0, CAST(0x0000A30C003966B4 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (423, 8, 1099, CAST(0x0000A30C00397474 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1099')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (424, 8, 1099, CAST(0x0000A30C00397491 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (425, 8, 1099, CAST(0x0000A30C00397558 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (426, 8, 1100, CAST(0x0000A30C00397E70 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1100')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (427, 8, 1100, CAST(0x0000A30C00397E88 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (428, 8, 1100, CAST(0x0000A30C00397F4F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (429, 8, 1101, CAST(0x0000A30C0039833E AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1101')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (430, 8, 1101, CAST(0x0000A30C00398355 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (431, 8, 1101, CAST(0x0000A30C0039840F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (432, 8, 1102, CAST(0x0000A30C003989AA AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1102')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (433, 8, 1102, CAST(0x0000A30C003989C6 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (434, 8, 1102, CAST(0x0000A30C00398A81 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (435, 8, 1103, CAST(0x0000A30C00398EE2 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1103')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (436, 8, 1103, CAST(0x0000A30C00398EFA AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (437, 8, 1103, CAST(0x0000A30C00398FBF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (438, 8, 1104, CAST(0x0000A30C003994FD AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1104')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (439, 8, 1104, CAST(0x0000A30C00399531 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (440, 8, 1104, CAST(0x0000A30C00399600 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (441, 8, 1105, CAST(0x0000A30C00399C4C AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1105')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (442, 8, 1105, CAST(0x0000A30C00399C5E AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (443, 8, 1105, CAST(0x0000A30C00399D21 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (444, 8, 1106, CAST(0x0000A30C0039A1F9 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1106')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (445, 8, 1106, CAST(0x0000A30C0039A21D AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (446, 1, 1054, CAST(0x0000A30B0172BDF1 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (447, 8, 1106, CAST(0x0000A30C0039A2DC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (448, 8, 1107, CAST(0x0000A30C0039A6E5 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1107')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (449, 8, 1107, CAST(0x0000A30C0039A6FE AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (450, 8, 1107, CAST(0x0000A30C0039A7BB AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (451, 8, 1108, CAST(0x0000A30C0039AE54 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1108')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (452, 8, 1108, CAST(0x0000A30C0039AE6B AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (453, 8, 1108, CAST(0x0000A30C0039AF2C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (454, 8, 1109, CAST(0x0000A30C0039B480 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1109')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (455, 8, 1109, CAST(0x0000A30C0039B497 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (456, 8, 1109, CAST(0x0000A30C0039B55F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (457, 0, 0, CAST(0x0000A30C0039B9B4 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (458, 8, 1110, CAST(0x0000A30C0039C1E4 AS DateTime), N'New', N'Content ''_Sections'' was created with Id 1110')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (459, 8, 1110, CAST(0x0000A30C0039C1FC AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (460, 8, 1110, CAST(0x0000A30C0039C2A8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (461, 0, 1054, CAST(0x0000A30B01730ABF AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (462, 0, 1096, CAST(0x0000A30C0039E751 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (463, 0, 1096, CAST(0x0000A30C0039EF4F AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (464, 0, 1096, CAST(0x0000A30C0039FCCB AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (465, 7, 1054, CAST(0x0000A30C003A0000 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (466, 0, 1054, CAST(0x0000A30B017368DE AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (467, 7, 1054, CAST(0x0000A30C003A4FBC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (468, 8, 1110, CAST(0x0000A30C003AA817 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (469, 7, 1054, CAST(0x0000A30B0173F333 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (470, 0, 1054, CAST(0x0000A30B017407CB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (471, 8, 1065, CAST(0x0000A30C003B0931 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (472, 0, 1111, CAST(0x0000A30C003B9C6E AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (473, 7, 1054, CAST(0x0000A30C003BA9B0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (474, 0, 1112, CAST(0x0000A30C003BC5ED AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (475, 0, 1111, CAST(0x0000A30C003BD8A9 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (476, 0, 1112, CAST(0x0000A30C003BE294 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (477, 0, 1111, CAST(0x0000A30C003BF9ED AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (478, 0, 1111, CAST(0x0000A30C003CD707 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (479, 0, 1111, CAST(0x0000A30C003CE1F1 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (480, 0, 1112, CAST(0x0000A30C003CF593 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (481, 0, 1112, CAST(0x0000A30C003D06EE AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (482, 0, 1112, CAST(0x0000A30C003D1220 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (483, 0, 1112, CAST(0x0000A30C003D219F AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (484, 0, 1112, CAST(0x0000A30C003D289A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (485, 0, 1092, CAST(0x0000A30C003D7910 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (486, 8, 1065, CAST(0x0000A30C003DF581 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (487, 0, 1054, CAST(0x0000A30B0177B845 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (488, 7, 1054, CAST(0x0000A30C003EA68B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (489, 0, 1054, CAST(0x0000A30B01783F1B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (490, 7, 1054, CAST(0x0000A30C003F29DF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (491, 0, 1054, CAST(0x0000A30B017888D3 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (492, 7, 1054, CAST(0x0000A30C003F6AC4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (493, 0, 1111, CAST(0x0000A30C00405F93 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (494, 0, 1112, CAST(0x0000A30C00407C01 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (495, 8, 1065, CAST(0x0000A30C00411391 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (496, 7, 1054, CAST(0x0000A30C0041C920 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (497, 7, 1093, CAST(0x0000A30C0041CA3F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (498, 7, 1094, CAST(0x0000A30C0041CD50 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (499, 7, 1093, CAST(0x0000A30C0041CDE0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (500, 7, 1054, CAST(0x0000A30C0041CF51 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (501, 1, 1094, CAST(0x0000A30C0042C7B2 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (502, 7, 1093, CAST(0x0000A30C0042CC9A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (503, 7, 1094, CAST(0x0000A30C0042CE05 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (504, 1, 1094, CAST(0x0000A30B017C0A6F AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
print 'Processed 500 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (505, 7, 1094, CAST(0x0000A30C004309B4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (506, 1, 1094, CAST(0x0000A30C004312B3 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (507, 1, 1094, CAST(0x0000A30B017C5809 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (508, 7, 1094, CAST(0x0000A30C00434194 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (509, 7, 1094, CAST(0x0000A30C00434E5B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (510, 7, 1093, CAST(0x0000A30C004352AA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (511, 7, 1054, CAST(0x0000A30C0043577A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (512, 1, 1054, CAST(0x0000A30C0043625A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (513, 1, 1094, CAST(0x0000A30C0043680D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (514, 8, 1065, CAST(0x0000A30C0043BC77 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (515, 8, 1094, CAST(0x0000A30C0043BF27 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (516, 7, 1054, CAST(0x0000A30C00440ED5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (517, 7, 1094, CAST(0x0000A30C00440FF2 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (518, 7, 1093, CAST(0x0000A30C00443AB8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (519, 7, 1094, CAST(0x0000A30C00443F26 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (520, 0, 1079, CAST(0x0000A30B017D7A56 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (521, 7, 1094, CAST(0x0000A30C00445C8B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (522, 0, 1094, CAST(0x0000A30B017EE032 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (523, 8, 1094, CAST(0x0000A30C00465E24 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (524, 8, 1115, CAST(0x0000A30C004687BF AS DateTime), N'New', N'Content ''Intro'' was created with Id 1115')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (525, 8, 1115, CAST(0x0000A30C00468813 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (526, 8, 1115, CAST(0x0000A30C004688EE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (527, 8, 1115, CAST(0x0000A30C0046A727 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (528, 8, 1094, CAST(0x0000A30C00480856 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (529, 8, 1093, CAST(0x0000A30C0048090F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (530, 8, 1115, CAST(0x0000A30C00480F51 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (531, 8, 1054, CAST(0x0000A30C004848D0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (532, 0, 1112, CAST(0x0000A30C0048855A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (533, 8, 1054, CAST(0x0000A30C00488C8B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (534, 0, 1111, CAST(0x0000A30C004895FA AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (535, 8, 1054, CAST(0x0000A30C00489888 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (536, 8, 1093, CAST(0x0000A30C004899AF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (537, 8, 1115, CAST(0x0000A30C00498669 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (538, 8, 1115, CAST(0x0000A30C00499252 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (539, 8, 1094, CAST(0x0000A30C004ABE36 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (540, 8, 1115, CAST(0x0000A30C004AC06E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (541, 8, 1116, CAST(0x0000A30C004B0E4F AS DateTime), N'New', N'Content ''Image Display'' was created with Id 1116')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (542, 8, 1116, CAST(0x0000A30C004B0EB6 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (543, 8, 1116, CAST(0x0000A30C004B0F87 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (544, 8, 1117, CAST(0x0000A30C004B1838 AS DateTime), N'New', N'Content ''Call to Action'' was created with Id 1117')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (545, 8, 1117, CAST(0x0000A30C004B1867 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (546, 8, 1117, CAST(0x0000A30C004B193F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (547, 8, 1094, CAST(0x0000A30C004B1C2D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (548, 8, 1118, CAST(0x0000A30C004B21C4 AS DateTime), N'New', N'Content ''Quote'' was created with Id 1118')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (549, 8, 1118, CAST(0x0000A30C004B21EF AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (550, 8, 1118, CAST(0x0000A30C004B22BF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (551, 8, 1116, CAST(0x0000A30C004B2404 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (552, 8, 1116, CAST(0x0000A30C004B33CE AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (553, 8, 1117, CAST(0x0000A30C004B353E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (554, 8, 1117, CAST(0x0000A30C004B66AA AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (555, 8, 1093, CAST(0x0000A30C004B6DA4 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (556, 8, 1116, CAST(0x0000A30C004B7332 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (557, 8, 1116, CAST(0x0000A30C004B78E0 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (558, 8, 1117, CAST(0x0000A30C004B7B96 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (559, 8, 1117, CAST(0x0000A30C004B81A8 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (560, 8, 1118, CAST(0x0000A30C004B8408 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (561, 8, 1118, CAST(0x0000A30C004B932E AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (562, 8, 1117, CAST(0x0000A30C004B99BC AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (563, 8, 1118, CAST(0x0000A30C004BB456 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (564, 8, 1118, CAST(0x0000A30C004F2CCF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (565, 8, 1065, CAST(0x0000A30C004F651B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (566, 8, 1118, CAST(0x0000A30C004F7404 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (567, 8, 1117, CAST(0x0000A30C004F7719 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (568, 8, 1116, CAST(0x0000A30C004F7B11 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (569, 0, 1094, CAST(0x0000A30B01897F60 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (570, 7, 1115, CAST(0x0000A30C0050BA8F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (571, 7, 1116, CAST(0x0000A30C0050BFA4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (572, 7, 1117, CAST(0x0000A30C0050C6F0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (573, 7, 1094, CAST(0x0000A30C00511971 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (574, 7, 1115, CAST(0x0000A30C00511C8C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (575, 7, 1116, CAST(0x0000A30C005120CD AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (576, 7, 1115, CAST(0x0000A30C00512695 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (577, 7, 1115, CAST(0x0000A30B018A4E77 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (578, 7, 1118, CAST(0x0000A30C00512D0C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (579, 7, 1117, CAST(0x0000A30C00513F5C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (580, 7, 1116, CAST(0x0000A30C00514D8F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (581, 7, 1115, CAST(0x0000A30C00514FD4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (582, 7, 1094, CAST(0x0000A30C0051530D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (583, 0, 1112, CAST(0x0000A30B018A9561 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (584, 0, 1079, CAST(0x0000A30B018A9CB2 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (585, 0, 1096, CAST(0x0000A30B018AA2B8 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (586, 0, 1096, CAST(0x0000A30B018AA98D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (587, 0, 1096, CAST(0x0000A30B018AB29D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (588, 7, 1094, CAST(0x0000A30C0051A0A8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (589, 1, 1094, CAST(0x0000A30C0051AB8B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (590, 0, 1094, CAST(0x0000A30C0000783A AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (591, 1, 1054, CAST(0x0000A30C0055D3AB AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (592, 1, 1093, CAST(0x0000A30C005617A2 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (593, 1, 1054, CAST(0x0000A30C00561960 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (594, 1, 1054, CAST(0x0000A30C0003D725 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (595, 1, 1054, CAST(0x0000A30C0003E12B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (596, 1, 1054, CAST(0x0000A30C0056B6DE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (597, 0, -1, CAST(0x0000A30C0056CD12 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (598, 0, 1051, CAST(0x0000A30C0056CD4A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (599, 0, -1, CAST(0x0000A30C0056D1B4 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (600, 0, 1051, CAST(0x0000A30C0056D1BE AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (601, 0, 1051, CAST(0x0000A30C0056D626 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (602, 1, 1063, CAST(0x0000A30C00588C3C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (603, 1, 1054, CAST(0x0000A30C0058902F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (604, 1, 1069, CAST(0x0000A30C0058954E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (605, 1, 1098, CAST(0x0000A30C00589B22 AS DateTime), N'Open', N'')
GO
print 'Processed 600 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (606, 1, 1094, CAST(0x0000A30C0058ABA1 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (607, 1, 1115, CAST(0x0000A30C0058AEB6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (608, 1, 1116, CAST(0x0000A30C0058B3CA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (609, 1, 1117, CAST(0x0000A30C0058B71D AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (610, 1, 1118, CAST(0x0000A30C0058BAE0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (611, 1, 1069, CAST(0x0000A30C005904CA AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (612, 1, 1067, CAST(0x0000A30C0059123F AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (613, 1, 1068, CAST(0x0000A30C0059208D AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (614, 1, 1066, CAST(0x0000A30C00592F98 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (615, 1, 1094, CAST(0x0000A30C005935C8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (616, 1, 1065, CAST(0x0000A30C00593EA8 AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (617, 1, 1094, CAST(0x0000A30C005964B4 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (618, 1, 1094, CAST(0x0000A30C005964C6 AS DateTime), N'Move', N'Move Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (619, 1, 1094, CAST(0x0000A30C005965D9 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (620, 1, 1094, CAST(0x0000A30C00596FBB AS DateTime), N'Copy', N'Copy Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (621, 1, 1119, CAST(0x0000A30C00597002 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (622, 0, 1120, CAST(0x0000A30C005A3CE9 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (623, 0, 1120, CAST(0x0000A30C005A48ED AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (624, 0, 1120, CAST(0x0000A30C005A543D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (625, 1, 1119, CAST(0x0000A30C005A5B26 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (626, 1, 1119, CAST(0x0000A30C005A5B81 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (627, 1, 1119, CAST(0x0000A30C0007F841 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (628, 1, 1119, CAST(0x0000A30C00081D7C AS DateTime), N'Copy', N'Copy Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (629, 1, 1121, CAST(0x0000A30C00081F0F AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (630, 1, 1094, CAST(0x0000A30C005A91E5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (631, 1, 1094, CAST(0x0000A30C000841A8 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (632, 0, 1092, CAST(0x0000A30C005AEC19 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (633, 8, 1116, CAST(0x0000A30C005AF5A8 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (634, 0, 1079, CAST(0x0000A30C00088C53 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (635, 1, 1094, CAST(0x0000A30C005AFEB4 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (636, 1, 1094, CAST(0x0000A30C0008975E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (637, 8, 1122, CAST(0x0000A30C005B0BAB AS DateTime), N'New', N'Content ''Rich Text'' was created with Id 1122')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (638, 8, 1122, CAST(0x0000A30C005B0C0D AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (639, 8, 1122, CAST(0x0000A30C005B0CFA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (640, 1, 1065, CAST(0x0000A30C005B19DA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (641, 0, 1120, CAST(0x0000A30C005B1AB4 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (642, 8, 1122, CAST(0x0000A30C005B1CF5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (643, 1, 1121, CAST(0x0000A30C005B2032 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (644, 8, 1122, CAST(0x0000A30C005B22A3 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (645, 1, 1121, CAST(0x0000A30C0008B875 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (646, 1, 1069, CAST(0x0000A30C005B296B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (647, 8, 1122, CAST(0x0000A30C005B2EE1 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (648, 1, 1069, CAST(0x0000A30C0008C4DB AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (649, 1, 1121, CAST(0x0000A30C005B3C25 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (650, 8, 1122, CAST(0x0000A30C005B6DCB AS DateTime), N'Publish', N'Publish with Children performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (651, 0, 1121, CAST(0x0000A30C000A74FC AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (652, 1, 1123, CAST(0x0000A30C000B6340 AS DateTime), N'New', N'Content ''Rich Text Section'' was created with Id 1123')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (653, 1, 1123, CAST(0x0000A30C000B6488 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (654, 1, 1123, CAST(0x0000A30C005DD347 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (655, 1, 1123, CAST(0x0000A30C000B9164 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (656, 8, 1115, CAST(0x0000A30C005E0142 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (657, 8, 1122, CAST(0x0000A30C005E01AB AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (658, 0, 0, CAST(0x0000A30C000DE232 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (659, 1, 1124, CAST(0x0000A30C000E0A52 AS DateTime), N'New', N'Content ''Image Right'' was created with Id 1124')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (660, 1, 1124, CAST(0x0000A30C000E0C5A AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (661, 1, 1124, CAST(0x0000A30C00607D5F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (662, 1, 1124, CAST(0x0000A30C000E3497 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (663, 1, 1125, CAST(0x0000A30C000E50BA AS DateTime), N'New', N'Content ''Quote'' was created with Id 1125')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (664, 1, 1125, CAST(0x0000A30C000E520A AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (665, 1, 1125, CAST(0x0000A30C0060BFF0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (666, 1, 1125, CAST(0x0000A30C000E6953 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (667, 1, 1126, CAST(0x0000A30C000EABE6 AS DateTime), N'New', N'Content ''Full Image'' was created with Id 1126')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (668, 1, 1126, CAST(0x0000A30C000EAD3D AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (669, 1, 1126, CAST(0x0000A30C00611BA7 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (670, 1, 1126, CAST(0x0000A30C000EB648 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (671, 1, 1127, CAST(0x0000A30C000EC619 AS DateTime), N'New', N'Content ''Two Column Images'' was created with Id 1127')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (672, 1, 1127, CAST(0x0000A30C000EC737 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (673, 1, 1127, CAST(0x0000A30C00613574 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (674, 2, 1076, CAST(0x0000A30C00613FBE AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (675, 1, 1127, CAST(0x0000A30C000ED71E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (676, 2, 1099, CAST(0x0000A30C00614C21 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (677, 2, 1099, CAST(0x0000A30C0061505B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (678, 1, 1127, CAST(0x0000A30C000EE41E AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (679, 1, 1054, CAST(0x0000A30C0061E730 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (680, 1, 1054, CAST(0x0000A30C000F8F05 AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (681, 8, 1115, CAST(0x0000A30C00620FA0 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (682, 1, 1060, CAST(0x0000A30C00621308 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (683, 0, 1111, CAST(0x0000A30C00623B56 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (684, 1, 1059, CAST(0x0000A30C000FD11C AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (685, 1, 1059, CAST(0x0000A30C000FD1F2 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (686, 0, 1111, CAST(0x0000A30C00624068 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (687, 0, 1059, CAST(0x0000A30C000FD908 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (688, 2, 1076, CAST(0x0000A30C006253A7 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (689, 0, 1112, CAST(0x0000A30C00625885 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (690, 0, 1059, CAST(0x0000A30C001002BC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (691, 0, 1112, CAST(0x0000A30C00627004 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (692, 1, 1060, CAST(0x0000A30C006276C5 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (693, 1, 1060, CAST(0x0000A30C00627849 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (694, 2, 1076, CAST(0x0000A30C0062E76B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (695, 2, 1077, CAST(0x0000A30C0062F4EA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (696, 2, 1077, CAST(0x0000A30C006307C9 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (697, 2, 1078, CAST(0x0000A30C00630BB6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (698, 2, 1078, CAST(0x0000A30C006316F0 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (699, 2, 1065, CAST(0x0000A30C00632268 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (700, 0, 1059, CAST(0x0000A30C0010BA55 AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (701, 0, 1059, CAST(0x0000A30C0010CB9D AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (702, 1, 1060, CAST(0x0000A30C00634272 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (703, 2, 1128, CAST(0x0000A30C00634658 AS DateTime), N'New', N'Content ''Mission & Goals'' was created with Id 1128')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (704, 2, 1128, CAST(0x0000A30C006346E0 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (705, 2, 1128, CAST(0x0000A30C006347EB AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (706, 1, 1060, CAST(0x0000A30C0010EEE2 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
print 'Processed 700 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (707, 2, 1065, CAST(0x0000A30C0063746A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (708, 0, 0, CAST(0x0000A30C00638F7C AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (709, 2, 1129, CAST(0x0000A30C0063AF3D AS DateTime), N'New', N'Content ''Who We Are'' was created with Id 1129')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (710, 2, 1129, CAST(0x0000A30C0063AF7F AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (711, 2, 1129, CAST(0x0000A30C0063B07A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (712, 2, 1130, CAST(0x0000A30C0063CCE3 AS DateTime), N'New', N'Content ''Fast Facts'' was created with Id 1130')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (713, 2, 1130, CAST(0x0000A30C0063CD29 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (714, 2, 1130, CAST(0x0000A30C0063CE1E AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (715, 0, 0, CAST(0x0000A30C0063E578 AS DateTime), N'Sort', N'Sorting content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (716, 2, 1128, CAST(0x0000A30C0063F3B6 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (717, 2, 1131, CAST(0x0000A30C006412D9 AS DateTime), N'New', N'Content ''Mission'' was created with Id 1131')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (718, 2, 1131, CAST(0x0000A30C006412F6 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (719, 2, 1131, CAST(0x0000A30C006413A9 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (720, 2, 1128, CAST(0x0000A30C00642BEC AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (721, 2, 1128, CAST(0x0000A30C00642C9F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (722, 2, 1131, CAST(0x0000A30C00645640 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (723, 2, 1128, CAST(0x0000A30C006460FA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (724, 2, 1131, CAST(0x0000A30C0064662F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (725, 2, 1128, CAST(0x0000A30C00646E99 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (726, 2, 1131, CAST(0x0000A30C00647BDA AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (727, 2, 1132, CAST(0x0000A30C00649528 AS DateTime), N'New', N'Content ''Mission'' was created with Id 1132')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (728, 2, 1132, CAST(0x0000A30C00649569 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (729, 2, 1132, CAST(0x0000A30C0064965B AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (730, 2, 1131, CAST(0x0000A30C00649AE3 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (731, 2, 1131, CAST(0x0000A30C0064A111 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (732, 2, 1131, CAST(0x0000A30C0064A8CF AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (733, 2, 1132, CAST(0x0000A30C0064B617 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (734, 2, 1132, CAST(0x0000A30C0064C140 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (735, 0, 1132, CAST(0x0000A30C0064C462 AS DateTime), N'UnPublish', N'UnPublish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (736, 0, 1132, CAST(0x0000A30C0064C52C AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (737, 2, 1132, CAST(0x0000A30C0064C584 AS DateTime), N'Delete', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (738, 2, 1131, CAST(0x0000A30C0064C7BB AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (739, 2, 1133, CAST(0x0000A30C0064F621 AS DateTime), N'New', N'Content ''Mission'' was created with Id 1133')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (740, 2, 1133, CAST(0x0000A30C0064F663 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (741, 2, 1133, CAST(0x0000A30C0064F734 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (742, 2, 1134, CAST(0x0000A30C006504ED AS DateTime), N'New', N'Content ''Goals'' was created with Id 1134')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (743, 2, 1134, CAST(0x0000A30C00650517 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (744, 2, 1134, CAST(0x0000A30C0065062C AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (745, 2, 1133, CAST(0x0000A30C00650A4F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (746, 2, 1133, CAST(0x0000A30C00652CF8 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (747, 2, 1134, CAST(0x0000A30C00653484 AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (748, 2, 1134, CAST(0x0000A30C00659203 AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (749, 2, 1128, CAST(0x0000A30C0066091A AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (750, 2, 1133, CAST(0x0000A30C0066908F AS DateTime), N'Open', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (751, 2, 1134, CAST(0x0000A30C00669780 AS DateTime), N'Open', N'')
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 04/13/2014 01:13:30 ******/
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](10) NULL,
	[languageCultureName] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoLanguage_languageISOCode] ON [dbo].[umbracoLanguage] 
(
	[languageISOCode] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (1, N'en-US', N'en-US')
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
/****** Object:  Table [dbo].[umbracoDomains]    Script Date: 04/13/2014 01:13:31 ******/
CREATE TABLE [dbo].[umbracoDomains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoDomains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 04/13/2014 01:13:33 ******/
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[master] [int] NULL,
	[alias] [nvarchar](100) NULL,
	[design] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTemplate_nodeId] ON [dbo].[cmsTemplate] 
(
	[nodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (4, 1055, NULL, N'MainLayout', N' ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (5, 1056, 1055, N'Home', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
    Layout = "MainLayout.cshtml";
}


<h1>Hello World</h1>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (6, 1064, 1055, N'Generic', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
    Layout = "MainLayout.cshtml";
}')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 04/13/2014 01:13:36 ******/
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userType] [int] NOT NULL,
	[startStructureID] [int] NOT NULL,
	[startMediaID] [int] NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](125) NOT NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userDefaultPermissions] [nvarchar](50) NULL,
	[userLanguage] [nvarchar](10) NULL,
	[defaultToLiveEditing] [bit] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin] ON [dbo].[umbracoUser] 
(
	[userLogin] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] ON
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (0, 0, 0, 1, -1, -1, N'Admin', N'fullstopnet', N'KEDH2KANQcMCJBoyAZ+1g1v12qs=', N'zach.iniguez@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (1, 0, 0, 1, -1, -1, N'Wade Kallhoff', N'wkallhof', N'A+hb6LTO9kwS8sLV1/EZF1PMyxU=', N'wkallhof@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (2, 0, 0, 1, -1, -1, N'Kelly Corrado', N'kcorrado', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'kcorrado@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (3, 0, 0, 1, -1, -1, N'Matt Aho', N'maho', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'maho@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (4, 0, 0, 1, -1, -1, N'Kelsey Halberg', N'khalberg', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'khalberg@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (5, 0, 0, 1, -1, -1, N'Ferenc Andahazy', N'fandahaz', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'ferenc@andahazydesign.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (6, 0, 0, 1, -1, -1, N'Chris Beal', N'cbeal', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'cbeal@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (7, 0, 0, 1, -1, -1, N'David Ly', N'dly', N'raVivV53FinxdBH2XDJyW5P34tg=', N'dly@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (8, 0, 0, 1, -1, -1, N'Zach Iniguez', N'ziniguez', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'ziniguez@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (9, 0, 0, 1, -1, -1, N'Ryan DeLuca', N'rdeluca', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'rdeluca@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (10, 0, 0, 1, -1, -1, N'Jen Heilemann', N'jheilema', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'jheilema@nerdery.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (11, 0, 0, 1, -1, -1, N'Rebecca Rice', N'rice0708', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'rice0708@gmail.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (12, 0, 0, 1, -1, -1, N'Barb Speltz', N'holz13126', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'holz13126@gmail.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (13, 0, 0, 1, -1, -1, N'Laura Hurley', N'laura.hurley', N'bmQIAuVzbYhhkVhVLXs+RV6UwvI=', N'laura.hurley@gmail.com', NULL, N'en', 0)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (14, 0, 0, 1, -1, -1, N'Paul Stroot', N'pstroot', N'Q].&bck', N'paul@dancingpaul.com', NULL, N'en', 0)
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 04/13/2014 01:13:39 ******/
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 04/13/2014 01:13:41 ******/
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroPropertyHidden] [bit] NOT NULL,
	[macroPropertyType] [int] NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [int] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsStylesheet]    Script Date: 04/13/2014 01:13:43 ******/
CREATE TABLE [dbo].[cmsStylesheet](
	[nodeId] [int] NOT NULL,
	[filename] [nvarchar](100) NOT NULL,
	[content] [ntext] NULL,
 CONSTRAINT [PK_cmsStylesheet] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 04/13/2014 01:13:44 ******/
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[tagId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 04/13/2014 01:13:45 ******/
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1049, 1051)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1049, 1063)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1049, 1089)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1057, 1092)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1058, 1059)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1075, 1079)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1075, 1095)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1075, 1096)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1075, 1111)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1075, 1112)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1075, 1120)
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 04/13/2014 01:13:48 ******/
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[isContainer] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentType] ON [dbo].[cmsContentType] 
(
	[nodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
CREATE NONCLUSTERED INDEX [IX_cmsContentType_icon] ON [dbo].[cmsContentType] 
(
	[icon] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] ON
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (532, 1031, N'Folder', N'folder.gif', N'folder.png', NULL, 1, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (533, 1032, N'Image', N'mediaPhoto.gif', N'mediaPhoto.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (534, 1033, N'File', N'mediaFile.gif', N'mediaFile.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (538, 1049, N'BaseContent', N'folder.gif', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (539, 1050, N'BaseSupplementalData', N'folder.gif', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (540, 1051, N'Home', N'.sprTreeSettingDomain', N'folder.png', N'', 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (541, 1057, N'BaseFolder', N'folder.gif', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (542, 1058, N'BaseSettings', N'folder.gif', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (543, 1059, N'SiteSettings', N'.sprTreeDeveloperMacro', N'developer.png', N'Settings page for website. There should only be one of these in the content tree.', 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (544, 1063, N'Generic', N'.sprTreeDoc', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (545, 1075, N'BaseSection', N'folder.gif', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (546, 1079, N'Section-ContentWithImage', N'New-Layer16x16.png', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (547, 1089, N'External', N'package.gif', N'folder.png', N'', 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (548, 1092, N'SectionsFolder', N'layers16x16.png', N'developer.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (549, 1095, N'Section-Quote', N'New-Layer16x16.png', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (550, 1096, N'Section-ImageDisplay', N'New-Layer16x16.png', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (551, 1111, N'Section-Intro', N'New-Layer16x16.png', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (552, 1112, N'Section-CallToAction', N'New-Layer16x16.png', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (553, 1120, N'Section-RichText', N'New-Layer16x16.png', N'folder.png', N'', 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
/****** Object:  Table [dbo].[cmsContent]    Script Date: 04/13/2014 01:13:49 ******/
CREATE TABLE [dbo].[cmsContent](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
 CONSTRAINT [PK_cmsContent] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContent] ON [dbo].[cmsContent] 
(
	[nodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[cmsContent] ON
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (2, 1054, 1051)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (3, 1060, 1059)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (4, 1065, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (5, 1066, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (6, 1067, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (7, 1068, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (8, 1069, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (9, 1070, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (10, 1071, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (12, 1076, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (13, 1077, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (14, 1078, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (15, 1080, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (16, 1081, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (17, 1082, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (18, 1084, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (19, 1085, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (20, 1086, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (21, 1087, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (22, 1088, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (23, 1091, 1089)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (24, 1093, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (25, 1094, 1079)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (26, 1097, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (27, 1098, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (28, 1099, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (29, 1100, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (30, 1101, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (31, 1102, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (32, 1103, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (33, 1104, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (34, 1105, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (35, 1106, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (36, 1107, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (37, 1108, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (38, 1109, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (39, 1110, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (40, 1115, 1111)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (41, 1116, 1096)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (42, 1117, 1112)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (43, 1118, 1095)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (44, 1119, 1079)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (45, 1121, 1079)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (46, 1122, 1120)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (47, 1123, 1120)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (48, 1124, 1079)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (49, 1125, 1095)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (50, 1126, 1096)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (51, 1127, 1096)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (52, 1128, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (53, 1129, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (54, 1130, 1063)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (55, 1131, 1092)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (56, 1132, 1079)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (57, 1133, 1120)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (58, 1134, 1079)
SET IDENTITY_INSERT [dbo].[cmsContent] OFF
/****** Object:  Table [dbo].[cmsDataType]    Script Date: 04/13/2014 01:13:51 ******/
CREATE TABLE [dbo].[cmsDataType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[controlId] [uniqueidentifier] NOT NULL,
	[dbType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_cmsDataType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDataType_nodeId] ON [dbo].[cmsDataType] 
(
	[nodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[cmsDataType] ON
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (1, -49, N'38b352c1-e9f8-4fd8-9324-9a2eab06d97a', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (2, -51, N'1413afcb-d19a-4173-8e9a-68288d2a73b8', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (3, -87, N'5e9b75ae-face-41c8-b47e-5f4b0fd82f83', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (4, -88, N'ec15c1e5-9d90-422a-aa52-4f7622c63bea', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (5, -89, N'67db8357-ef57-493e-91ac-936d305e0f2a', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (6, -90, N'5032a6e6-69e3-491d-bb28-cd31cd11086c', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (7, -92, N'6c738306-4c17-4d88-b9bd-6546f3771597', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (8, -36, N'b6fb1622-afa5-4bbf-a3cc-d9672a442222', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (9, -37, N'f8d60f68-ec59-4974-b43b-c46eb5677985', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (10, -38, N'cccd4ae9-f399-4ed2-8038-2e88d19e810c', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (11, -39, N'928639ed-9c73-4028-920c-1e55dbb68783', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (12, -40, N'a52c7c1c-c330-476e-8605-d63d3b84b6a6', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (13, -41, N'23e93522-3200-44e2-9f29-e61a6fcbb79a', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (14, -42, N'a74ea9c9-8e18-4d2a-8cf6-73c6206c5da6', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (15, -43, N'b4471851-82b6-4c75-afa4-39fa9c6a75e9', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (16, 1034, N'158aa029-24ed-4948-939e-c3da209e5fba', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (17, 1035, N'ead69342-f06d-4253-83ac-28000225583b', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (18, 1036, N'39f533e4-0551-4505-a64b-e0425c5ce775', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (19, 1038, N'60b7dabf-99cd-41eb-b8e9-4d2e669bbde9', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (20, 1039, N'cdbf0b5d-5cb2-445f-bc12-fcaaec07cf2c', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (21, 1040, N'71b8ad1a-8dc2-425c-b6b8-faa158075e63', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (22, 1041, N'4023e540-92f5-11dd-ad8b-0800200c9a66', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (23, 1042, N'474fcff8-9d2d-11de-abc6-ad7a56d89593', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (24, 1043, N'7a2d436c-34c2-410f-898f-4a23b3d79f54', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (25, 1061, N'29f9301c-31f8-437d-b6b5-897c1cafe586', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (26, 1062, N'22c6f52c-5d41-45b8-845e-c16354cfdd7b', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (27, 1072, N'a74ea9c9-8e18-4d2a-8cf6-73c6206c5da6', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (28, 1083, N'a74ea9c9-8e18-4d2a-8cf6-73c6206c5da6', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (29, 1090, N'a74ea9c9-8e18-4d2a-8cf6-73c6206c5da6', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (31, 1114, N'a74ea9c9-8e18-4d2a-8cf6-73c6206c5da6', N'Ntext')
SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 04/13/2014 01:13:52 ******/
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 04/13/2014 01:13:53 ******/
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1051, 1056, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1063, 1064, 1)
/****** Object:  Table [dbo].[cmsDocument]    Script Date: 04/13/2014 01:13:56 ******/
CREATE TABLE [dbo].[cmsDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[documentUser] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[releaseDate] [datetime] NULL,
	[expireDate] [datetime] NULL,
	[updateDate] [datetime] NOT NULL,
	[templateId] [int] NULL,
	[alias] [nvarchar](255) NULL,
	[newest] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocument] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDocument] ON [dbo].[cmsDocument] 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 1, N'a91a9142-74fd-4a96-afdb-0015ca09ed69', N'Rain Garden', NULL, NULL, CAST(0x0000A30B01653DFA AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 1, 1, N'000e2e49-b40e-44a7-9416-02826949ef82', N'Get Involved', NULL, NULL, CAST(0x0000A30C00592F52 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1103, 0, 8, N'0f73ba4d-dc8a-47bd-982b-02a4ce4ba252', N'_Sections', NULL, NULL, CAST(0x0000A30C00398EE7 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 0, N'96e5d485-d19d-4853-a4e0-03e8e78a32be', N'Nominate a Garden', NULL, NULL, CAST(0x0000A30B01646A4A AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1098, 0, 0, N'12c5aec2-ba60-456c-b9a2-048d38471f98', N'_Sections', NULL, NULL, CAST(0x0000A30C00396660 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1076, 0, 1, N'6fa81a28-70ef-4ac1-8752-060702cea736', N'Success Stories', NULL, NULL, CAST(0x0000A30C00593DCE AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'5ac236f2-50b1-4781-9ecb-0877a710c612', N'Settings', NULL, NULL, CAST(0x0000A30B014F7902 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 8, N'be6f3ebf-6c59-47db-b09f-08a5ede16d25', N'Learn About Raingardens', NULL, NULL, CAST(0x0000A30C0023A6F7 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1087, 0, 0, N'586f94b5-70b1-4366-8666-0a876300e8df', N'Metrics', NULL, NULL, CAST(0x0000A30C0039B96E AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 1, 1, N'7a381290-2a63-43d2-a9a1-0c890799ce96', N'Settings', NULL, NULL, CAST(0x0000A30C0010ED46 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1082, 0, 8, N'285f3dca-60e6-419f-b8e0-0c900caceec9', N'Build a Raingarden', NULL, NULL, CAST(0x0000A30C00244A58 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1109, 0, 8, N'24a6591c-96a6-4261-932e-0d00bd1717a1', N'_Sections', NULL, NULL, CAST(0x0000A30C0039B485 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 1, 1, N'f46771dc-fdb6-4f11-b142-0fb5f3f96dc9', N'Rain Garden', NULL, NULL, CAST(0x0000A30C000895C6 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 0, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', N'Settings', NULL, NULL, CAST(0x0000A30B015259F9 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1130, 0, 2, N'ced16b35-fb8a-4c8e-9be3-0fce059fc5d3', N'Fast Facts', NULL, NULL, CAST(0x0000A30C0063CCCB AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 0, N'fe31c5b0-537d-4bd3-b515-10314997c164', N'Nominate a Garden', NULL, NULL, CAST(0x0000A30C00247044 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 8, N'360250f6-aefc-479c-bb42-10ac287407a4', N'Settings', NULL, NULL, CAST(0x0000A30C001A3706 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1093, 0, 1, N'078a0ada-c219-42e1-9646-10e0537b1510', N'_Sections', NULL, NULL, CAST(0x0000A30B01644B88 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1122, 0, 8, N'd8d31c0f-fe16-403e-a0c8-117cec23ee42', N'Rich Text', NULL, NULL, CAST(0x0000A30C005B0BC7 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 8, N'0e829276-7c29-41d7-b47f-119146978c0e', N'Settings', NULL, NULL, CAST(0x0000A30C000C48DB AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 8, N'c3539526-20d9-492d-9191-11b2a9e46ede', N'Learn About Raingardens', NULL, NULL, CAST(0x0000A30C0025E94C AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1076, 0, 0, N'a1505ed9-aa20-4ff3-82f4-11fb6771615d', N'Success Stories', NULL, NULL, CAST(0x0000A30C00638E8B AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1082, 0, 0, N'24737ac7-033c-4e8b-910d-13a143023498', N'Build a Raingarden', NULL, NULL, CAST(0x0000A30C00396677 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 1, N'd869e49c-d785-453e-8fad-13a75493162b', N'Learn About Raingardens', NULL, NULL, CAST(0x0000A30C00590413 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1117, 0, 8, N'3f925ef2-ea2e-4be9-bb90-15126483dd90', N'Call to Action', NULL, NULL, CAST(0x0000A30C004B6684 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1087, 0, 8, N'6d463da2-4476-4818-b641-153162fc7936', N'Metrics', NULL, NULL, CAST(0x0000A30C00249541 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1085, 0, 8, N'21b03ec1-253c-4ac3-a1fb-17b8973a3a42', N'Neighborhood Gardens', NULL, NULL, CAST(0x0000A30C00248832 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1116, 0, 8, N'a352df75-b91f-4c04-84e2-197309c6fa3c', N'Image Display', NULL, NULL, CAST(0x0000A30C004B338D AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1116, 1, 8, N'36dcc88a-304a-4ba1-a9ad-19a4dd2380ef', N'Image Display', NULL, NULL, CAST(0x0000A30C004B7843 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1099, 1, 1, N'd4217e0d-2846-495e-9e1e-19c317de4b24', N'_Sections', NULL, NULL, CAST(0x0000A30C00593DFD AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 1, N'2bdf4245-0b0f-4af5-9e19-19ec9a058816', N'Evaluate', NULL, NULL, CAST(0x0000A30B0108BE64 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1121, 0, 0, N'9385456d-b14a-43a0-b7c8-1a53fc5c94f3', N'Rain Garden', NULL, NULL, CAST(0x0000A30C000A7187 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1103, 1, 1, N'5c82c03c-2a46-40aa-a6e0-1a54a75db834', N'_Sections', NULL, NULL, CAST(0x0000A30C0059044B AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 1, N'a1ca6215-9e87-4dac-b991-1c2f41d14ba1', N'Settings', NULL, NULL, CAST(0x0000A30B00D7BAEB AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1124, 0, 1, N'023b9399-255d-45b0-a0de-1d634d17129a', N'Image Right', NULL, NULL, CAST(0x0000A30C000E0B5E AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1080, 0, 0, N'18930665-5e2e-469e-9420-1d71c1ab45e5', N'GIS Map', NULL, NULL, CAST(0x0000A30C00395339 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 8, N'08f41152-20ed-4f24-8f21-1d87ca3500f3', N'Get Involved', NULL, NULL, CAST(0x0000A30C0025E929 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 7, N'3be7858c-682e-45a4-b09f-1d91086d9775', N'Learn', NULL, NULL, CAST(0x0000A30B014DD8FE AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 1, 1, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', N'Home', NULL, NULL, CAST(0x0000A30C000F8D76 AS DateTime), 1056, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1117, 0, 8, N'd5af004f-ca6d-4961-aba5-2059178be2a1', N'Call to Action', NULL, NULL, CAST(0x0000A30C004B1826 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1130, 0, 0, N'fb80be66-045a-46b7-a74a-237f6b15864b', N'Fast Facts', NULL, NULL, CAST(0x0000A30C0063E4FA AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 0, N'e073e86a-f624-4f5a-9bd3-23fe5841e5b4', N'Get Started', NULL, NULL, CAST(0x0000A30C002386F5 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1129, 0, 2, N'847e7ba8-feb8-4e28-a650-254e3cc5886e', N'Who We Are', NULL, NULL, CAST(0x0000A30C0063AF26 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1125, 1, 1, N'4be50b7b-e5d0-4019-a530-25a5a0aa927d', N'Quote', NULL, NULL, CAST(0x0000A30C000E67F5 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1132, 0, 0, N'b126e8f1-daed-45be-b756-299199de5781', N'Mission', NULL, NULL, CAST(0x0000A30C0064C441 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1130, 0, 2, N'87d9548f-ef50-4ed5-8e50-2a17b9832aaa', N'Fast Facts', NULL, NULL, CAST(0x0000A30C0063CD03 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1101, 1, 1, N'ebe82f51-bbf8-4ea9-a5ae-2a7cf8c8eca0', N'_Sections', NULL, NULL, CAST(0x0000A30C00593DEA AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1086, 1, 1, N'19c74e5a-35cb-4f94-a905-2ad73ae5a8f2', N'Helpful Tips', NULL, NULL, CAST(0x0000A30C00591FD6 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1093, 0, 0, N'5cde28c8-15e2-4fdc-b613-2bc907244995', N'_Sections', NULL, NULL, CAST(0x0000A30B016468DA AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1110, 0, 8, N'8d8b94dc-ddd9-4181-9ced-2ec1afee75ee', N'_Sections', NULL, NULL, CAST(0x0000A30C0039C1E9 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1118, 1, 8, N'84fa2d33-0a8f-433a-9c25-2f20a30adb4e', N'Quote', NULL, NULL, CAST(0x0000A30C004BB431 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 0, N'2d93c073-1aba-4021-84ff-3039080dacbe', N'Get Involved', NULL, NULL, CAST(0x0000A30B01646B61 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1124, 1, 1, N'6812337f-cc91-4c3e-be5c-3050596083d4', N'Image Right', NULL, NULL, CAST(0x0000A30C000E32EB AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1132, 0, 2, N'0f4d91b8-b599-44c5-a6c4-311e6bdebe76', N'Mission', NULL, NULL, CAST(0x0000A30C00649552 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 8, N'f7c03f4b-5d5a-46c0-bff3-32ea052318eb', N'Evaluate Your Garden', NULL, NULL, CAST(0x0000A30C0023FD15 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'72615184-5231-4ad6-a9c7-341056baf7ee', N'Settings', NULL, NULL, CAST(0x0000A30B0146DD19 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1131, 0, 2, N'e36f966e-af30-4292-827e-3480929fc715', N'Sections', NULL, NULL, CAST(0x0000A30C0064A0F0 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'8239187a-3432-406c-9aa2-37acebf434c1', N'Home', NULL, NULL, CAST(0x0000A30B01783D6C AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1123, 1, 0, N'7d00fdf5-e0b4-4573-bd4a-38d6ec845f4d', N'Rich Text Section', NULL, NULL, CAST(0x0000A30C000DDE06 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1080, 0, 0, N'eedb72da-0ea4-4d8d-9c69-39cf4562648e', N'GIS Map', NULL, NULL, CAST(0x0000A30C00638EA4 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1110, 1, 1, N'53f66ee9-5f21-4961-b8ed-3bddac45dd0a', N'_Sections', NULL, NULL, CAST(0x0000A30C00592F5B AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1077, 1, 1, N'c0dc39ae-4311-4225-888e-3c2209c7e28e', N'News', NULL, NULL, CAST(0x0000A30C00593DBB AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1091, 0, 8, N'8b20e26f-ae81-4b3a-93d6-3c690ba22c5d', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C0025E2CF AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 1, N'd2eac496-68d4-4a2d-be1b-3dbcf2479202', N'Learn', NULL, NULL, CAST(0x0000A30B013CF600 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 1, N'71374bec-8b38-4f28-8735-40b3eb45f99f', N'Rain Garden', NULL, NULL, CAST(0x0000A30B01648AFD AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 1, N'8266cf9a-b72c-46a0-bc06-416f4304296a', N'Home', NULL, NULL, CAST(0x0000A30C0003D52E AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1129, 0, 2, N'4ba1d7c9-82cd-4fbc-80a6-46ee0321773f', N'Who We Are', NULL, NULL, CAST(0x0000A30C0063AF5E AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 8, N'5b937dfd-f00a-43f3-9346-475270afa100', N'Settings', NULL, NULL, CAST(0x0000A30C001B8C11 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', N'Settings', NULL, NULL, CAST(0x0000A30B0146EA54 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 8, N'd2cbb2dc-387c-49fe-ba8d-47b173c1e173', N'Nominate a Garden', NULL, NULL, CAST(0x0000A30C0023BA89 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1105, 1, 1, N'625a5892-915d-40cd-9a8a-47d0fb4b9b96', N'_Sections', NULL, NULL, CAST(0x0000A30C005911EF AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 1, N'e27e4828-fc29-4df3-b3fb-48cd131d8869', N'Learn', NULL, NULL, CAST(0x0000A30B0108EB9A AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1078, 0, 2, N'dd8f92e2-b586-4aad-b4ac-492a333ebe0d', N'Board of Directors', NULL, NULL, CAST(0x0000A30C0063168C AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1127, 0, 1, N'13cd5dbc-088f-4ccf-8ed7-4ae0e285d52a', N'Two Column Images', NULL, NULL, CAST(0x0000A30C000ED5C4 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 1, N'4fa4f3cc-42a3-4d9b-975c-4b48fb8a0caa', N'Home', NULL, NULL, CAST(0x0000A30B00DCB681 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 1, N'd5bb40a4-9ed2-43a3-90ea-4b5183cd7a9a', N'Get Started', NULL, NULL, CAST(0x0000A30B0108686E AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1127, 1, 1, N'fc0b338d-0e81-4593-a52a-4b8b2ce81536', N'Two Column Images', NULL, NULL, CAST(0x0000A30C000EE2DB AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1132, 0, 2, N'e867077d-4411-43ec-a89a-4c113b91f424', N'Mission', NULL, NULL, CAST(0x0000A30C00649510 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 1, N'd3677e69-2b92-4f03-870f-4ed9342e3850', N'Learn', NULL, NULL, CAST(0x0000A30B0108D9C9 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1107, 0, 8, N'a4d02287-e437-4a47-b96f-506fc5f1635b', N'_Sections', NULL, NULL, CAST(0x0000A30C0039A6E7 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1115, 1, 7, N'73ed39d3-f093-454b-b60e-518a77d53e64', N'Intro', NULL, NULL, CAST(0x0000A30B018A4CA0 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1134, 0, 2, N'99dc70b6-aae3-4f7a-87ec-525ecc5f366a', N'Goals', NULL, NULL, CAST(0x0000A30C006504DA AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1081, 1, 1, N'39eafedc-46c4-4617-b108-52a38074be37', N'Water Pollution', NULL, NULL, CAST(0x0000A30C00590434 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1107, 0, 0, N'67506182-f161-4c5b-a2af-52ce14683f72', N'_Sections', NULL, NULL, CAST(0x0000A30C0039B95B AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1087, 1, 1, N'bf53ee50-c556-4848-b5d6-532b94b1ed42', N'Metrics', NULL, NULL, CAST(0x0000A30C00591FCD AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1097, 0, 8, N'3c95b146-e097-4d26-b195-53e7ca68b64c', N'_Sections', NULL, NULL, CAST(0x0000A30C00394C32 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 1, N'99373f45-0d8b-4dad-98a3-551030778f8a', N'About Us', NULL, NULL, CAST(0x0000A30B013CF56D AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1076, 0, 8, N'906bf507-3c47-4190-8507-55a5958fbecb', N'Success Stories', NULL, NULL, CAST(0x0000A30C002423DA AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1076, 0, 0, N'5c78daf4-0f07-4fe7-b025-562ff8a16f85', N'Success Stories', NULL, NULL, CAST(0x0000A30C0039531D AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 0, N'a524a104-d622-4332-8aa6-56a653d4580e', N'Evaluate', NULL, NULL, CAST(0x0000A30C0023870E AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1082, 1, 1, N'333da0ac-714e-4d7b-9b98-59282997e2db', N'Build a Raingarden', NULL, NULL, CAST(0x0000A30C0059042B AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', N'Settings', NULL, NULL, CAST(0x0000A30B014E95FD AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1109, 1, 1, N'8013c2ad-0f9b-4de3-b0b9-59785ac7f7f4', N'_Sections', NULL, NULL, CAST(0x0000A30C00591FF7 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1115, 0, 8, N'9edbbd77-d914-4cba-81a8-598d25bf2211', N'Intro', NULL, NULL, CAST(0x0000A30C004B6D4B AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1115, 0, 8, N'8c9a8b62-8f75-4a57-b139-5b0e40708cf5', N'Intro', NULL, NULL, CAST(0x0000A30C0046A702 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1088, 0, 8, N'bec0255b-cda2-4e0a-8810-5b1c9b4ecf77', N'Awards', NULL, NULL, CAST(0x0000A30C0024997B AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 8, N'b96cb2a8-58be-41a1-a933-5bf72c5fb278', N'Nominate a Garden', NULL, NULL, CAST(0x0000A30C0025E942 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 7, N'd1e50115-b6f6-4908-bd04-5d893cfd8457', N'Learn', NULL, NULL, CAST(0x0000A30B014E6F24 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 1, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', N'Home', NULL, NULL, CAST(0x0000A30C0003DF65 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1106, 1, 1, N'0965aff9-348c-4946-95c9-5f8464ee6a7e', N'_Sections', NULL, NULL, CAST(0x0000A30C00592001 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 7, N'efe13d8e-fdda-4fbd-9740-6060e40c360e', N'Home', NULL, NULL, CAST(0x0000A30B0171A6BA AS DateTime), 1056, NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'059c1545-97bb-4087-8e05-609472d8cdac', N'Nominate', NULL, NULL, CAST(0x0000A30B013CF4EC AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 0, N'6b5ff58e-e2a0-41c0-8484-61ff307364d7', N'About Us', NULL, NULL, CAST(0x0000A30B01091B95 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 0, N'3df2d94b-4c08-416f-a0b4-62b33dd599ab', N'About Us', NULL, NULL, CAST(0x0000A30B01646935 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1082, 0, 8, N'75866210-b028-4c52-b71e-63a1a76c2766', N'Build a Raingarden', NULL, NULL, CAST(0x0000A30C00244A7E AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1093, 1, 8, N'970a4805-8382-4e35-91fc-67d03999e079', N'_Sections', NULL, NULL, CAST(0x0000A30C004B6D42 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 0, N'07207e71-03d0-40a4-aa79-67eeedbb53fe', N'Rain Garden', NULL, NULL, CAST(0x0000A30B017EDD30 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1080, 0, 1, N'a366970e-8785-4761-80de-680f06cf35e4', N'GIS Map', NULL, NULL, CAST(0x0000A30C00593DA4 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1102, 0, 8, N'38da9f1d-d19c-4808-8134-683bccfbdb26', N'_Sections', NULL, NULL, CAST(0x0000A30C003989AF AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1133, 0, 2, N'baf1f86d-007e-42cb-9581-6868f8e58be1', N'Mission', NULL, NULL, CAST(0x0000A30C00652CD3 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 1, N'b38df474-6d5f-40bf-a57f-6882145682bc', N'Get Started', NULL, NULL, CAST(0x0000A30B01086958 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 0, N'3427b47c-56a1-4d3e-ad0f-69d036331ecf', N'Get Involved', NULL, NULL, CAST(0x0000A30C0024708A AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1124, 0, 1, N'211dee2f-92e2-4406-98e7-69ea46fa6d16', N'Image Right', NULL, NULL, CAST(0x0000A30C000E09B0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'7a2920ac-19c3-4644-bf65-6a39eaba622a', N'Settings', NULL, NULL, CAST(0x0000A30B01410B7F AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1077, 0, 2, N'038f4991-1984-48e5-afc3-6a967ac79020', N'History', NULL, NULL, CAST(0x0000A30C0063077E AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1087, 0, 8, N'f5753041-68fe-4365-b2e2-6b76a1614e39', N'Metrics', NULL, NULL, CAST(0x0000A30C00249516 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 1, N'c99abc2b-69d0-497a-b3bb-6c9e653af978', N'Settings', NULL, NULL, CAST(0x0000A30B00D7AF2E AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 0, N'2f6d9834-c374-4d57-a684-6d5f0a4e8063', N'Learn About Raingardens', NULL, NULL, CAST(0x0000A30B016469C0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 1, N'9cc864d8-00b5-49d5-90f7-6d748e58ce00', N'Rain Garden', NULL, NULL, CAST(0x0000A30B017C5671 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 1, N'be59a2c5-e1cb-442d-98e8-6ec004cbf400', N'Evaluate', NULL, NULL, CAST(0x0000A30B013CF693 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1078, 0, 0, N'7b6752a2-22f9-4350-82c0-6febcd1a55f5', N'Board of Directors', NULL, NULL, CAST(0x0000A30C00638E9E AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 8, N'f89dfaed-c3f8-4bc5-89c5-7023fc744dd9', N'Get Involved', NULL, NULL, CAST(0x0000A30C0023B17B AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1117, 0, 8, N'7c6462c1-86e7-4615-8668-72a3f04d2081', N'Call to Action', NULL, NULL, CAST(0x0000A30C004B1850 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1081, 0, 8, N'bb2f40f4-82e2-45de-87a7-73a896595b1e', N'Water Pollution', NULL, NULL, CAST(0x0000A30C00243F56 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1133, 0, 2, N'dd364868-62d7-449e-ba4d-76df95a08400', N'Mission', NULL, NULL, CAST(0x0000A30C0064F639 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1122, 0, 8, N'18f74886-2641-4a0f-b040-77016267b70f', N'Rich Text', NULL, NULL, CAST(0x0000A30C005B0B8A AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 8, N'c2d44d35-49e2-47c0-a05b-772857aa8f01', N'About Us', NULL, NULL, CAST(0x0000A30C0025E955 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1106, 0, 8, N'2f385530-cf30-4615-8bdc-780bbd4cbf28', N'_Sections', NULL, NULL, CAST(0x0000A30C0039A201 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 8, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', N'Settings', NULL, NULL, CAST(0x0000A30C001A3D93 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 8, N'e401c327-7266-403a-9863-78fc3c191b7a', N'Settings', NULL, NULL, CAST(0x0000A30C000C5296 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 0, N'946a59bf-7878-41f2-a1c6-79aed4ee41cd', N'About Us', NULL, NULL, CAST(0x0000A30C002386D9 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 1, 1, N'd4d2cfc9-978c-4a21-abab-7b58b3e391e6', N'Evaluate Your Garden', NULL, NULL, CAST(0x0000A30C00591FB5 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1088, 0, 0, N'06dddcce-e02c-45e8-a991-7d645d651717', N'Awards', NULL, NULL, CAST(0x0000A30C0039B977 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1119, 0, 1, N'8a51613a-1e0f-4a09-8349-7de0ad5610c7', N'Rain Garden', NULL, NULL, CAST(0x0000A30C00596FE1 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1128, 0, 0, N'25ed5290-d2ae-40d6-b1f4-7f407a934656', N'Mission & Goals', NULL, NULL, CAST(0x0000A30C00638E6F AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', N'Settings', NULL, NULL, CAST(0x0000A30B0142B204 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1086, 0, 0, N'99410205-1bb5-4831-9e10-80fdfc419db9', N'Helpful Tips', NULL, NULL, CAST(0x0000A30C0039B964 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1122, 0, 8, N'f9adb43e-0e40-405d-bd23-829274b0c9cc', N'Rich Text', NULL, NULL, CAST(0x0000A30C005B2ECE AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1076, 1, 0, N'7f2aa1c9-7eec-4454-aba5-8294e0c98a54', N'Success Stories', NULL, NULL, CAST(0x0000A30C0063E4F0 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1091, 0, 8, N'0c65b3c7-0df7-423d-8ad8-82dfe9d77a73', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C0025B945 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1118, 0, 8, N'adabe667-c1ac-4267-b8e9-831c6d6901c3', N'Quote', NULL, NULL, CAST(0x0000A30C004B21D7 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 1, N'9db668a5-6ab4-438f-a811-88183abf9507', N'Rain Garden', NULL, NULL, CAST(0x0000A30C00596443 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1078, 0, 0, N'828586e1-f01d-434b-9e1f-8875291aedee', N'Reports', NULL, NULL, CAST(0x0000A30C00395330 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 0, N'b6717821-d8bb-476b-8e68-8883820dacd3', N'Nominate', NULL, NULL, CAST(0x0000A30C002386FF AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1121, 0, 1, N'8619d616-abe7-452f-983a-899e6e479e9b', N'Rain Garden', NULL, NULL, CAST(0x0000A30C00081DEB AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1091, 0, 8, N'ae61d94d-e7db-4a81-976e-8b6da2b46ff5', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C0025B96A AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1078, 1, 1, N'9a0a54d3-1029-4f8d-ae72-8c82a1892dec', N'Reports', NULL, NULL, CAST(0x0000A30C00593DAD AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1098, 0, 8, N'cfdb4385-c4ec-44a0-8cc7-8e460c73517d', N'_Sections', NULL, NULL, CAST(0x0000A30C00395FF0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1102, 1, 1, N'07f1347c-c44f-4b07-aca2-900f8ca5a908', N'_Sections', NULL, NULL, CAST(0x0000A30C00593DE1 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 1, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', N'Home', NULL, NULL, CAST(0x0000A30B0172BAF1 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1122, 1, 8, N'c8f0e9cf-263f-4372-ade6-91f0f5ebf7ce', N'Rich Text', NULL, NULL, CAST(0x0000A30C005B6D8A AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1126, 0, 1, N'b50259fa-6455-4976-a12f-930913d5b336', N'Full Image', NULL, NULL, CAST(0x0000A30C000EAB51 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1134, 0, 2, N'7f37e3c8-aece-478e-8f48-9330f5ce22ae', N'Goals', NULL, NULL, CAST(0x0000A30C00650500 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1078, 0, 8, N'1c375f5f-3956-4cab-b4de-939c76b8f3af', N'Reports', NULL, NULL, CAST(0x0000A30C0024310C AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', N'Home', NULL, NULL, CAST(0x0000A30B0177B52D AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'4d4d7a41-3634-49d9-a60f-963346169ef7', N'Home', NULL, NULL, CAST(0x0000A30B01736765 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1084, 0, 8, N'8f240c1d-2e9f-4432-9a2d-96375a1ad85d', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C00247CAA AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 8, N'd6434aa6-ad99-40e9-a1f9-97785c2f6e07', N'Nominate a Garden', NULL, NULL, CAST(0x0000A30C0023FD23 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', N'Home', NULL, NULL, CAST(0x0000A30B017405EA AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1123, 0, 1, N'afc3ec37-a91e-4470-836f-98ba89095190', N'Rich Text Section', NULL, NULL, CAST(0x0000A30C000B8945 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 1, N'1e5ad465-3f68-44e1-883a-9b1dead92ced', N'Rain Garden', NULL, NULL, CAST(0x0000A30B0164AB19 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 0, N'bd541b2a-67ce-488a-9792-9eee7ddb83e0', N'Rain Garden', NULL, NULL, CAST(0x0000A30C000074E9 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1134, 0, 2, N'05bedb18-0430-40d6-b48a-9f3841329677', N'Goals', NULL, NULL, CAST(0x0000A30C006591E2 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'e08b4aa4-21c6-4476-8ca1-9f971d0a3976', N'Nominate', NULL, NULL, CAST(0x0000A30B0108A69A AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 1, N'ac66e4a6-02dd-42c8-b0d3-a21d12365763', N'Rain Garden', NULL, NULL, CAST(0x0000A30B016489EC AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'8d91136a-2149-4114-8801-a36931d71893', N'Home', NULL, NULL, CAST(0x0000A30B01788723 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1078, 0, 8, N'205c6d9e-9262-47b6-b818-a3e7be626713', N'Reports', NULL, NULL, CAST(0x0000A30C0024316E AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 1, N'f193d91a-c41d-47c3-8289-a4d70f35b5f0', N'Rain Garden', NULL, NULL, CAST(0x0000A30B0164B558 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 0, N'4a9ce66c-947f-4f1b-846d-a537b7b38a7a', N'Learn', NULL, NULL, CAST(0x0000A30C002386E8 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'eb2a7148-33cc-4594-86e4-a564a1e9248a', N'Home', NULL, NULL, CAST(0x0000A30B0173093C AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1093, 0, 1, N'659c629d-91bd-4528-9246-a6a0408b928a', N'_Sections', NULL, NULL, CAST(0x0000A30B01645D6C AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'dac2c40a-fa62-4318-a411-a741cc681f41', N'Nominate a Garden', NULL, NULL, CAST(0x0000A30B01089691 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 7, N'08447b68-0048-46fd-98ba-a74e4ec74e37', N'Home', NULL, NULL, CAST(0x0000A30B0173F1B9 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1107, 1, 1, N'a0cbab08-b5bb-422e-a196-a83900d9d864', N'_Sections', NULL, NULL, CAST(0x0000A30C00591FEE AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 1, N'dfc7ab9c-e40f-41e0-91d9-a9046d4530de', N'Learn', NULL, NULL, CAST(0x0000A30B0108E298 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 1, 1, N'4774f0d0-3bba-49e5-8c27-aa2aa2c1d7d3', N'About Us', NULL, NULL, CAST(0x0000A30C00593D96 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1080, 1, 0, N'cc057683-168c-4218-98bd-aadb22bf6a09', N'GIS Map', NULL, NULL, CAST(0x0000A30C0063E503 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1100, 1, 1, N'0819806d-b85f-42ae-a2c3-acd9961f3ef8', N'_Sections', NULL, NULL, CAST(0x0000A30C00593DF4 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 1, N'02e1d78a-45a8-4cec-bced-acf830d6f0b3', N'About Us', NULL, NULL, CAST(0x0000A30B0107D02F AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 8, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', N'Settings', NULL, NULL, CAST(0x0000A30C001B87F0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1128, 0, 2, N'7afc11f8-6aac-47e8-89d3-aee551cd5c7e', N'Mission & Goals', NULL, NULL, CAST(0x0000A30C00634640 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1126, 0, 1, N'd19cbd4f-46e5-4c4d-8033-aeef2225ec14', N'Full Image', NULL, NULL, CAST(0x0000A30C000EAC5E AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1108, 0, 8, N'5e0d97d6-d0bc-4016-8c92-af6c789b51ca', N'_Sections', NULL, NULL, CAST(0x0000A30C0039AE59 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1125, 0, 1, N'efc803f0-1ebd-47f4-b18c-afd9263f4c6d', N'Quote', NULL, NULL, CAST(0x0000A30C000E5131 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1088, 1, 1, N'45d80349-d6d9-4b75-9c98-b170adddfd7c', N'Awards', NULL, NULL, CAST(0x0000A30C00591FC3 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1098, 1, 1, N'ff82bd65-2c95-469a-8126-b1c29a22e472', N'_Sections', NULL, NULL, CAST(0x0000A30C0059043D AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 1, N'd81d308d-3d38-489a-ab2d-b273764e0737', N'Home', NULL, NULL, CAST(0x0000A30B013CF43C AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 1, N'503fcc0a-0199-44cd-b667-b3933b17ddab', N'About Us', NULL, NULL, CAST(0x0000A30B0107D264 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 1, N'a2f2833d-6535-429f-8a7a-b4c6027d7134', N'Get Started', NULL, NULL, CAST(0x0000A30B013CF715 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 0, N'1b208d54-f459-4967-8a12-b53c279675e6', N'Settings', NULL, NULL, CAST(0x0000A30B01439A95 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1104, 1, 1, N'7ad53d75-16b8-4a7c-b695-b948ecb1bd0d', N'_Sections', NULL, NULL, CAST(0x0000A30C00590447 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1091, 0, 8, N'14d1982d-c684-4e7e-abf6-ba01cb9e267e', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C0025DC41 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1084, 0, 8, N'623b9ca4-b4e5-4535-b533-ba101d8a4919', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C00247C3A AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1117, 1, 8, N'16b78d42-cb65-4a53-808c-bc53968f303b', N'Call to Action', NULL, NULL, CAST(0x0000A30C004B998E AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1091, 0, 0, N'ba292480-d5ab-4f7f-b410-beacdee797db', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C0025FBD9 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1104, 0, 8, N'a4e076af-12c3-4a31-9e15-bee544987936', N'_Sections', NULL, NULL, CAST(0x0000A30C00399507 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 8, N'5a43da8a-9a17-47c1-b080-bff98fdeeeca', N'Evaluate Your Garden', NULL, NULL, CAST(0x0000A30C0025E934 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1132, 0, 0, N'a92e8c7d-b13f-4e05-8281-c0d902bc071c', N'Mission', NULL, NULL, CAST(0x0000A30C0064C4D7 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1100, 0, 8, N'909b3d7a-fbc1-479b-b70f-c18e4922b9a2', N'_Sections', NULL, NULL, CAST(0x0000A30C00397E75 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1129, 0, 0, N'21c994a6-7a0f-4cbc-a336-c1d886f1bb0a', N'Who We Are', NULL, NULL, CAST(0x0000A30C0063E4E2 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1133, 0, 2, N'06251646-5e8b-4125-9251-c27fe28116fe', N'Mission', NULL, NULL, CAST(0x0000A30C0064F600 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', N'Settings', NULL, NULL, CAST(0x0000A30B01412142 AS DateTime), NULL, NULL, 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 1, N'2016a822-0cee-4bd7-be35-c37a95f15b39', N'Nominate a Garden', NULL, NULL, CAST(0x0000A30B0108959C AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1123, 0, 1, N'2733fbde-e2d3-4f3e-94a8-c3a575f68f9f', N'Rich Text Section', NULL, NULL, CAST(0x0000A30C000B63B8 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'e4c6dcd1-1a1c-48c7-a202-c59fe96233b0', N'Home', NULL, NULL, CAST(0x0000A30A00276C42 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 8, N'd4d357ce-a278-467d-8037-c5ab05717416', N'Home', NULL, NULL, CAST(0x0000A30B017E56EE AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1080, 0, 8, N'997c8443-e949-4c9d-a510-c6008f2ec77f', N'GIS Map', NULL, NULL, CAST(0x0000A30C0024374B AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1081, 0, 8, N'61bbf614-38a8-4ff0-b274-c7849dab76ee', N'Water Pollution', NULL, NULL, CAST(0x0000A30C00243F2C AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 8, N'33a63839-f3bd-46c2-84f7-c7c5883c1689', N'Evaluate Your Garden', NULL, NULL, CAST(0x0000A30C0023C620 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 8, N'9945b911-2938-459d-b775-c8adc13441ea', N'Home', NULL, NULL, CAST(0x0000A30C0025E91B AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1115, 0, 8, N'7b0b11e6-04a6-4ab2-97ea-c8ba58d75de6', N'Intro', NULL, NULL, CAST(0x0000A30C004687E5 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1086, 0, 8, N'4d3b708f-7bf1-4f97-b9bd-cb09efc00b01', N'Helpful Tips', NULL, NULL, CAST(0x0000A30C00248EC2 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'df741113-1693-40dd-a84f-cbec0ca7efde', N'Home', NULL, NULL, CAST(0x0000A30B016FC97D AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1081, 0, 0, N'a32e6396-76d2-4c6d-9881-ccb0f232e642', N'Water Pollution', NULL, NULL, CAST(0x0000A30C00396669 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 0, N'3a8bbf65-56d4-4962-b90c-cd75d0f58784', N'Evaluate Your Garden', NULL, NULL, CAST(0x0000A30C0024707C AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1099, 0, 8, N'93575fc2-9009-4d17-a105-cdc9d1f5ead1', N'_Sections', NULL, NULL, CAST(0x0000A30C00397479 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1118, 0, 8, N'45583017-fc24-42fb-a79e-cf4925af25b3', N'Quote', NULL, NULL, CAST(0x0000A30C004B930D AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1121, 1, 0, N'd98ecab4-7923-4b24-b0d6-cf685e084f01', N'Rain Garden', NULL, NULL, CAST(0x0000A30C000DDE85 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', N'Settings', NULL, NULL, CAST(0x0000A30B014E8C74 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 1, N'98c4a658-b78b-4101-837c-cfd4d63d27f9', N'Home', NULL, NULL, CAST(0x0000A30B0109C8C9 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1119, 1, 1, N'cbff34f9-c7de-4a60-9b0b-d080a7ad22f4', N'Rain Garden', NULL, NULL, CAST(0x0000A30C0007F4EF AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 0, N'f6756a99-90af-437f-abbb-d190bb512260', N'Settings', NULL, NULL, CAST(0x0000A30B01416A2D AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1084, 0, 0, N'04421ee4-e917-46d5-b0a1-d26494abb947', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C0025B252 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1086, 0, 8, N'f7596132-4713-47d9-aff8-d28fb95a4df6', N'Helpful Tips', NULL, NULL, CAST(0x0000A30C00248E93 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 1, 1, N'a5fb736b-9fc5-485a-a95b-d2b1317089b7', N'Learn About Raingardens', NULL, NULL, CAST(0x0000A30C0008C354 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 1, N'd79b08ea-12dd-4feb-a710-d2ca89d94ae1', N'About Us', NULL, NULL, CAST(0x0000A30B01088364 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', N'Home', NULL, NULL, CAST(0x0000A30B017232C6 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1077, 0, 8, N'76fd6b9e-cc1f-430e-a46b-d3da7d9896be', N'News', NULL, NULL, CAST(0x0000A30C00242B8D AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'ff8d8742-b124-4e76-bff9-d762a826a481', N'Home', NULL, NULL, CAST(0x0000A30A0028BFE9 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1091, 1, 1, N'e6d86568-3e52-4239-a0b0-d7d341d0009c', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C005911D7 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1116, 0, 8, N'd7e4d761-5229-48f8-a970-d8091e888609', N'Image Display', NULL, NULL, CAST(0x0000A30C004B0E2E AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1077, 0, 0, N'744e12af-67df-483b-b0a7-d8a3b13f6fc9', N'News', NULL, NULL, CAST(0x0000A30C00395327 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'f4a497e8-91ca-4773-ab0d-db96380d98b3', N'Home', NULL, NULL, CAST(0x0000A30B016FD867 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1131, 0, 2, N'd7858675-4bdc-4af8-ace3-dc523b47f173', N'Mission', NULL, NULL, CAST(0x0000A30C006412DE AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 8, N'6de5f370-087c-477b-b606-dcf3fbf19f27', N'Get Involved', NULL, NULL, CAST(0x0000A30C0023FD31 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 1, N'8e2b3270-4cde-4aae-b784-dd363af82c97', N'Rain Garden', NULL, NULL, CAST(0x0000A30C00084009 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1118, 0, 8, N'7eb2642b-0131-4814-9387-ddc87f4838c4', N'Quote', NULL, NULL, CAST(0x0000A30C004B21B2 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 1, N'eeee29e0-b4d7-48e6-baf7-ddff0e74d318', N'Home', NULL, NULL, CAST(0x0000A30B00D099F3 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1121, 0, 1, N'b763de81-6cc4-481e-9c15-de1d0ee54640', N'Rain Garden', NULL, NULL, CAST(0x0000A30C0008B6E8 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1127, 0, 1, N'3b261c21-cd45-4840-845d-de53a90c8b93', N'Two Column Images', NULL, NULL, CAST(0x0000A30C000EC663 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 1, N'5a83986c-c8db-403a-a4f8-dfd44f30ce15', N'Home', NULL, NULL, CAST(0x0000A30B00EAFF13 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1115, 0, 8, N'39dea376-f3a0-4534-9b9a-dfd5d71dc310', N'Intro', NULL, NULL, CAST(0x0000A30C0046879E AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1085, 1, 1, N'fc185468-522e-4acb-bf3c-dfee751bfa83', N'Neighborhood Gardens', NULL, NULL, CAST(0x0000A30C005911E0 AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 1, N'7718150e-6bad-4d43-9d22-e04455940bc5', N'Evaluate', NULL, NULL, CAST(0x0000A30B0108BF6B AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 8, N'bc77814c-1a04-4ff5-9ad3-e097facb7b23', N'Rain Garden', NULL, NULL, CAST(0x0000A30C004B6D55 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 0, N'771aa397-e20f-4ed0-aef7-e0feca39e982', N'Learn', NULL, NULL, CAST(0x0000A30B01091B0B AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 1, N'c36ac041-bdbe-4246-ae9d-e3cc3142c7c9', N'Settings', NULL, NULL, CAST(0x0000A30B00D7B0C3 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1108, 1, 1, N'42d29064-7840-44d5-ac38-e4006a052048', N'_Sections', NULL, NULL, CAST(0x0000A30C00591FFC AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1105, 0, 8, N'bf2afd83-9f67-4402-a1c6-e4df20687a46', N'_Sections', NULL, NULL, CAST(0x0000A30C00399C4C AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1085, 0, 8, N'9fa7ba2e-2e8b-4352-8e39-e507aa37b69d', N'Neighborhood Gardens', NULL, NULL, CAST(0x0000A30C00248866 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1101, 0, 8, N'933e2aae-e14c-4606-86d1-e519fd418b54', N'_Sections', NULL, NULL, CAST(0x0000A30C00398343 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1097, 0, 0, N'27e0ffcf-262b-4b2c-b0df-e6ff965d08f8', N'_Sections', NULL, NULL, CAST(0x0000A30C00395314 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1097, 1, 1, N'c5f29f48-9d78-4e72-90f8-e7443962c58c', N'_Sections', NULL, NULL, CAST(0x0000A30C00593DD7 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1126, 1, 1, N'c6361add-ef1a-4d82-b9b3-e7971c9b5f56', N'Full Image', NULL, NULL, CAST(0x0000A30C000EB4F8 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1127, 0, 1, N'07c11df7-aa4e-4561-b130-e7f464a0c9de', N'Two Column Images', NULL, NULL, CAST(0x0000A30C000EC58F AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1125, 0, 1, N'6368b073-9120-4203-b4b9-e8411943608e', N'Quote', NULL, NULL, CAST(0x0000A30C000E502E AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 1, 1, N'7456490d-713b-4867-a8c4-eafd1a89d6d5', N'Nominate a Garden', NULL, NULL, CAST(0x0000A30C005911CE AS DateTime), 1064, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 0, N'd23b5633-a300-40ba-b0a1-eb1ce0eccdc3', N'Rain Garden', NULL, NULL, CAST(0x0000A30B01897C6A AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1080, 0, 8, N'4f688e42-ef58-494c-b969-ed02ef763ac3', N'GIS Map', NULL, NULL, CAST(0x0000A30C0024377A AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'd184786d-ee8f-4ba1-8ce5-ed5d7d8fa495', N'Home', NULL, NULL, CAST(0x0000A30A002968E3 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1094, 0, 8, N'83ab7492-6606-49e4-a8a4-f039c0e41a85', N'Rain Garden', NULL, NULL, CAST(0x0000A30C00384B07 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 0, N'11212ba1-4c67-4676-92da-f05990feb076', N'Evaluate Your Garden', NULL, NULL, CAST(0x0000A30B01646AD5 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1088, 0, 8, N'60589e4c-1517-4206-9f74-f11ef8aa861a', N'Awards', NULL, NULL, CAST(0x0000A30C002499AA AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1060, 0, 7, N'2b1e6899-f545-4e18-9760-f1d08deb771e', N'Settings', NULL, NULL, CAST(0x0000A30B014F704E AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1128, 0, 2, N'86a84e4e-f6a3-4325-8198-f26d1eb36d05', N'Mission & Goals', NULL, NULL, CAST(0x0000A30C0063468B AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1084, 0, 0, N'15e97317-2b6f-4dc2-9de0-f33aeb5da76c', N'Submit a Garden', NULL, NULL, CAST(0x0000A30C0025B23B AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1076, 0, 8, N'b99a8aeb-004b-48d3-8e87-f4e333f39e78', N'Success Stories', NULL, NULL, CAST(0x0000A30C002423FF AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1054, 0, 0, N'001eb834-8c7a-411b-a225-f5dc31faa67b', N'Home', NULL, NULL, CAST(0x0000A30B013E1153 AS DateTime), 1056, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1116, 0, 8, N'b9d11cbe-88a6-40c6-88cc-faa818c08b7d', N'Image Display', NULL, NULL, CAST(0x0000A30C004B0E7E AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1123, 0, 1, N'209f7a0e-f9e2-4e2b-83e7-fc092d501fb2', N'Rich Text Section', NULL, NULL, CAST(0x0000A30C000B62BD AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1077, 0, 8, N'5e8519e0-656c-434d-95bc-fd366aea2a85', N'News', NULL, NULL, CAST(0x0000A30C00242B68 AS DateTime), 1064, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 1, N'9eb8becd-688d-4147-8b45-fef86e003e0e', N'Learn', NULL, NULL, CAST(0x0000A30B0108DADC AS DateTime), 1064, NULL, 0)
/****** Object:  Table [dbo].[cmsContentXml]    Script Date: 04/13/2014 01:13:58 ******/
CREATE TABLE [dbo].[cmsContentXml](
	[nodeId] [int] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1054, N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-13T00:56:37" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false}]}]]></navigationLinks>
  <utilityLinks><![CDATA[{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}]]></utilityLinks>
</Home>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1060, N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-13T01:01:37" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
  <facebookID>metro-blooms</facebookID>
  <twitterHandle>metroblooms</twitterHandle>
  <linkedInID>metro-blooms</linkedInID>
  <pinterestID>metroblooms</pinterestID>
  <non-ContentAliases>SectionsFolder</non-ContentAliases>
</SiteSettings>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1065, N'<Generic id="1065" parentID="1054" level="2" creatorID="1" sortOrder="1" createDate="2014-04-12T16:00:30" updateDate="2014-04-13T05:24:54" nodeName="About Us" urlName="about-us" path="-1,1054,1065" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1066, N'<Generic id="1066" parentID="1054" level="2" creatorID="1" sortOrder="5" createDate="2014-04-12T16:02:40" updateDate="2014-04-13T05:24:42" nodeName="Get Involved" urlName="get-involved" path="-1,1054,1066" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Getting started content</p>]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1067, N'<Generic id="1067" parentID="1054" level="2" creatorID="1" sortOrder="3" createDate="2014-04-12T16:03:19" updateDate="2014-04-13T05:24:17" nodeName="Nominate a Garden" urlName="nominate-a-garden" path="-1,1054,1067" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Nominate!</p>]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1068, N'<Generic id="1068" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:03:54" updateDate="2014-04-13T05:24:29" nodeName="Evaluate Your Garden" urlName="evaluate-your-garden" path="-1,1054,1068" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Evaluate your garden here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1069, N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:04:17" updateDate="2014-04-13T00:31:54" nodeName="Learn About Raingardens" urlName="learn-about-raingardens" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Learn content here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1070, N'<Folder id="1070" parentID="-1" level="1" creatorID="1" sortOrder="0" createDate="2014-04-12T17:37:28" updateDate="2014-04-12T17:37:28" nodeName="Placeholder" urlName="placeholder" path="-1,1070" isDoc="" nodeType="1031" writerName="Wade Kallhoff" writerID="1" version="96ea989a-0033-4d35-a127-47779ca85652" template="0" nodeTypeAlias="Folder">
  <contents></contents>
</Folder>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1071, N'<Image id="1071" version="f29ca10b-ab37-4823-b146-21f5e393c0ed" parentID="1070" level="2" writerID="1" nodeType="1032" template="0" sortOrder="0" createDate="2014-04-12T17:38:03" updateDate="2014-04-12T18:32:17" nodeName="Raingarden Pic" urlName="raingardenpic" writerName="Wade Kallhoff" nodeTypeAlias="Image" path="-1,1070,1071"><umbracoFile>/media/1001/Raingarden-pic.jpg</umbracoFile><umbracoWidth>533</umbracoWidth><umbracoHeight>345</umbracoHeight><umbracoBytes>61433</umbracoBytes><umbracoExtension>jpg</umbracoExtension><cropAnchor><![CDATA[Right]]></cropAnchor></Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1076, N'<Generic id="1076" parentID="1065" level="3" creatorID="8" sortOrder="5" createDate="2014-04-13T02:11:34" updateDate="2014-04-13T06:03:42" nodeName="Success Stories" urlName="success-stories" path="-1,1054,1065,1076" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1077, N'<Generic id="1077" parentID="1065" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:11:41" updateDate="2014-04-13T05:24:55" nodeName="News" urlName="news" path="-1,1054,1065,1077" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1078, N'<Generic id="1078" parentID="1065" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T02:11:46" updateDate="2014-04-13T05:24:54" nodeName="Reports" urlName="reports" path="-1,1054,1065,1078" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1080, N'<Generic id="1080" parentID="1065" level="3" creatorID="8" sortOrder="7" createDate="2014-04-13T02:11:51" updateDate="2014-04-13T06:03:42" nodeName="GIS Map" urlName="gis-map" path="-1,1054,1065,1080" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1081, N'<Generic id="1081" parentID="1069" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:11:58" updateDate="2014-04-13T05:24:05" nodeName="Water Pollution" urlName="water-pollution" path="-1,1054,1069,1081" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1082, N'<Generic id="1082" parentID="1069" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:12:07" updateDate="2014-04-13T05:24:05" nodeName="Build a Raingarden" urlName="build-a-raingarden" path="-1,1054,1069,1082" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1085, N'<Generic id="1085" parentID="1067" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:13:00" updateDate="2014-04-13T05:24:17" nodeName="Neighborhood Gardens" urlName="neighborhood-gardens" path="-1,1054,1067,1085" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1086, N'<Generic id="1086" parentID="1068" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:13:05" updateDate="2014-04-13T05:24:29" nodeName="Helpful Tips" urlName="helpful-tips" path="-1,1054,1068,1086" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1087, N'<Generic id="1087" parentID="1068" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:13:11" updateDate="2014-04-13T05:24:29" nodeName="Metrics" urlName="metrics" path="-1,1054,1068,1087" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1088, N'<Generic id="1088" parentID="1068" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T02:13:15" updateDate="2014-04-13T05:24:29" nodeName="Awards" urlName="awards" path="-1,1054,1068,1088" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1091, N'<External id="1091" parentID="1067" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T02:17:20" updateDate="2014-04-13T05:24:17" nodeName="Submit a Garden" urlName="submit-a-garden" path="-1,1054,1067,1091" isDoc="" nodeType="1089" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="External">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <redirectUrl><![CDATA[{"Title":"Submit a Garden","Mode":1,"NodeId":null,"Url":"https://www.metroblooms.org/nominate.php","NewWindow":false}]]></redirectUrl>
</External>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1093, N'<SectionsFolder id="1093" parentID="1054" level="2" creatorID="1" sortOrder="0" createDate="2014-04-12T21:37:13" updateDate="2014-04-13T04:34:37" nodeName="_Sections" urlName="_sections" path="-1,1054,1093" isDoc="" nodeType="1092" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1094, N'<Section-ContentWithImage id="1094" parentID="1097" level="4" creatorID="1" sortOrder="1" createDate="2014-04-12T21:38:07" updateDate="2014-04-13T00:31:15" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1065,1097,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p>Test</p>
<p>another</p>
<p>test</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1097, N'<SectionsFolder id="1097" parentID="1065" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T03:28:36" updateDate="2014-04-13T05:24:55" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1097" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1098, N'<SectionsFolder id="1098" parentID="1069" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T03:28:53" updateDate="2014-04-13T05:24:05" nodeName="_Sections" urlName="_sections" path="-1,1054,1069,1098" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1099, N'<SectionsFolder id="1099" parentID="1076" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:11" updateDate="2014-04-13T05:24:55" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1076,1099" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1100, N'<SectionsFolder id="1100" parentID="1077" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:19" updateDate="2014-04-13T05:24:55" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1077,1100" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1101, N'<SectionsFolder id="1101" parentID="1078" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:23" updateDate="2014-04-13T05:24:55" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1078,1101" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1102, N'<SectionsFolder id="1102" parentID="1080" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:29" updateDate="2014-04-13T05:24:55" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1080,1102" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1103, N'<SectionsFolder id="1103" parentID="1081" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:33" updateDate="2014-04-13T05:24:06" nodeName="_Sections" urlName="_sections" path="-1,1054,1069,1081,1103" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1104, N'<SectionsFolder id="1104" parentID="1082" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:38" updateDate="2014-04-13T05:24:05" nodeName="_Sections" urlName="_sections" path="-1,1054,1069,1082,1104" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1105, N'<SectionsFolder id="1105" parentID="1085" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:45" updateDate="2014-04-13T05:24:17" nodeName="_Sections" urlName="_sections" path="-1,1054,1067,1085,1105" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1106, N'<SectionsFolder id="1106" parentID="1086" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:49" updateDate="2014-04-13T05:24:29" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1086,1106" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1107, N'<SectionsFolder id="1107" parentID="1068" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:54" updateDate="2014-04-13T05:24:29" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1107" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1108, N'<SectionsFolder id="1108" parentID="1087" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:30:00" updateDate="2014-04-13T05:24:29" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1087,1108" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1109, N'<SectionsFolder id="1109" parentID="1088" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:30:05" updateDate="2014-04-13T05:24:29" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1088,1109" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1110, N'<SectionsFolder id="1110" parentID="1066" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T03:30:17" updateDate="2014-04-13T05:24:42" nodeName="_Sections" urlName="_sections" path="-1,1054,1066,1110" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1115, N'<Section-Intro id="1115" parentID="1093" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T04:16:47" updateDate="2014-04-12T23:55:35" nodeName="Intro" urlName="intro" path="-1,1054,1093,1115" isDoc="" nodeType="1111" creatorName="Zach Iniguez" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="Section-Intro">
  <title>Title</title>
  <cta1><![CDATA[{"Title":"CTA1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta1>
  <cta2><![CDATA[{"Title":"CTA2","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta2>
  <alignment><![CDATA[Center]]></alignment>
</Section-Intro>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1116, N'<Section-ImageDisplay id="1116" parentID="1093" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T04:33:16" updateDate="2014-04-13T04:34:46" nodeName="Image Display" urlName="image-display" path="-1,1054,1093,1116" isDoc="" nodeType="1096" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1>1071</image1>
  <image2>1071</image2>
  <image3>1071</image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1117, N'<Section-CallToAction id="1117" parentID="1093" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T04:33:24" updateDate="2014-04-13T04:35:15" nodeName="Call to Action" urlName="call-to-action" path="-1,1054,1093,1117" isDoc="" nodeType="1112" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-CallToAction">
  <title>Home Page Section Title</title>
  <cta1><![CDATA[{"Title":"CTA Link 1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta1>
  <cta2><![CDATA[{"Title":"CTA Link 2","Mode":1,"NodeId":null,"Url":"http://www.google.com","NewWindow":false}]]></cta2>
  <text><![CDATA[<p>Lorem ipsum.</p>]]></text>
  <alignment><![CDATA[Center]]></alignment>
</Section-CallToAction>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1118, N'<Section-Quote id="1118" parentID="1093" level="3" creatorID="8" sortOrder="4" createDate="2014-04-13T04:33:32" updateDate="2014-04-13T04:35:37" nodeName="Quote" urlName="quote" path="-1,1054,1093,1118" isDoc="" nodeType="1095" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-Quote">
  <heading>Pull Quote Header</heading>
  <quote><![CDATA[Lorem ipsum.]]></quote>
  <citation>Ghandi</citation>
</Section-Quote>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1119, N'<Section-ContentWithImage id="1119" parentID="1093" level="3" creatorID="1" sortOrder="4" createDate="2014-04-13T05:25:37" updateDate="2014-04-13T00:28:58" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1119" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p>Test</p>
<p>another</p>
<p>test</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1121, N'<Section-ContentWithImage id="1121" parentID="1098" level="4" creatorID="1" sortOrder="1" createDate="2014-04-13T00:29:32" updateDate="2014-04-13T00:50:29" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1069,1098,1121" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[
        <p>Test</p>
    ]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1122, N'<Section-RichText id="1122" parentID="1093" level="3" creatorID="8" sortOrder="5" createDate="2014-04-13T05:31:29" updateDate="2014-04-13T05:32:52" nodeName="Rich Text" urlName="rich-text" path="-1,1054,1093,1122" isDoc="" nodeType="1120" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-RichText">
  <heading></heading>
  <text><![CDATA[<p>Rich Text - text</p>]]></text>
</Section-RichText>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1123, N'<Section-RichText id="1123" parentID="1098" level="4" creatorID="1" sortOrder="0" createDate="2014-04-13T00:41:27" updateDate="2014-04-13T00:50:29" nodeName="Rich Text Section" urlName="rich-text-section" path="-1,1054,1069,1098,1123" isDoc="" nodeType="1120" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="Section-RichText">
  <heading>Rich Text Section</heading>
  <text><![CDATA[<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras volutpat aliquet est, sed sollicitudin purus tincidunt volutpat. Suspendisse in tristique lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin et ultricies sem, at dictum lorem. Integer et felis iaculis, semper libero sed, imperdiet ipsum. Mauris iaculis sodales augue sed viverra. Mauris diam metus, volutpat facilisis malesuada vel, fermentum ac neque.</p>
<p>Morbi volutpat nibh vel magna varius viverra. Fusce ac nisi nisl. Etiam viverra adipiscing ligula, vitae sagittis turpis fringilla accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut diam ligula, ornare sit amet ullamcorper eget, vehicula at risus. Maecenas id enim purus. Morbi elementum, dui non luctus vehicula, augue justo lacinia diam, a hendrerit tellus tortor ac sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus urna sem, vehicula a est id, dignissim tempus mi. Donec justo enim, fringilla et tellus in, porta tristique tellus. Sed nisl odio, molestie sagittis dolor at, porttitor tempus massa. Donec condimentum tellus lacus, eget interdum metus euismod et. Phasellus eu leo sed nisi lacinia fermentum.</p>]]></text>
</Section-RichText>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1124, N'<Section-ContentWithImage id="1124" parentID="1098" level="4" creatorID="1" sortOrder="2" createDate="2014-04-13T00:51:06" updateDate="2014-04-13T00:51:41" nodeName="Image Right" urlName="image-right" path="-1,1054,1069,1098,1124" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>Image RIght</subheader>
  <text><![CDATA[<p>Nunc ultrices congue metus sed egestas. Aliquam metus mauris, pharetra quis placerat at, euismod a nulla. Nam tortor quam, blandit in mattis sed, pulvinar ac augue. Curabitur tincidunt, ipsum vitae suscipit aliquet, arcu arcu molestie turpis, ac blandit ante urna bibendum purus. Suspendisse justo erat, blandit non nisi a, adipiscing vestibulum lectus. Nunc tempor nisl eget tincidunt ultrices. Donec sit amet libero eget neque aliquam hendrerit. Pellentesque id ligula mollis, condimentum purus et, euismod turpis. Sed eu velit at urna pulvinar posuere. Vivamus vel turpis ante. Praesent non sollicitudin elit, at tempus ligula. Quisque ut felis vitae metus placerat semper. Integer varius auctor neque, ut ultrices purus. In est ante, interdum quis adipiscing nec, tristique eget sem.</p>
<p>Donec nec volutpat odio. Sed congue at</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Right]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1125, N'<Section-Quote id="1125" parentID="1098" level="4" creatorID="1" sortOrder="3" createDate="2014-04-13T00:52:06" updateDate="2014-04-13T00:52:27" nodeName="Quote" urlName="quote" path="-1,1054,1069,1098,1125" isDoc="" nodeType="1095" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-Quote">
  <heading>Resharper</heading>
  <quote><![CDATA[Use Resharper]]></quote>
  <citation>David Ly</citation>
</Section-Quote>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1126, N'<Section-ImageDisplay id="1126" parentID="1098" level="4" creatorID="1" sortOrder="4" createDate="2014-04-13T00:53:24" updateDate="2014-04-13T00:53:32" nodeName="Full Image" urlName="full-image" path="-1,1054,1069,1098,1126" isDoc="" nodeType="1096" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1>1071</image1>
  <image2></image2>
  <image3></image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1127, N'<Section-ImageDisplay id="1127" parentID="1098" level="4" creatorID="1" sortOrder="5" createDate="2014-04-13T00:53:46" updateDate="2014-04-13T00:54:11" nodeName="Two Column Images" urlName="two-column-images" path="-1,1054,1069,1098,1127" isDoc="" nodeType="1096" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1>1071</image1>
  <image2>1071</image2>
  <image3></image3>
</Section-ImageDisplay>')
/****** Object:  Table [dbo].[cmsContentVersion]    Script Date: 04/13/2014 01:13:59 ******/
CREATE TABLE [dbo].[cmsContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ContentId] [int] NOT NULL,
	[VersionId] [uniqueidentifier] NOT NULL,
	[VersionDate] [datetime] NOT NULL,
	[LanguageLocale] [nvarchar](10) NULL,
 CONSTRAINT [PK_cmsContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentVersion_VersionId] ON [dbo].[cmsContentVersion] 
(
	[VersionId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[cmsContentVersion] ON
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (3, 1054, N'e4c6dcd1-1a1c-48c7-a202-c59fe96233b0', CAST(0x0000A30A00276C42 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (4, 1054, N'ff8d8742-b124-4e76-bff9-d762a826a481', CAST(0x0000A30A0028BFE9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (5, 1054, N'd184786d-ee8f-4ba1-8ce5-ed5d7d8fa495', CAST(0x0000A30A002968E3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (6, 1054, N'eeee29e0-b4d7-48e6-baf7-ddff0e74d318', CAST(0x0000A30B00D099F3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (7, 1060, N'c99abc2b-69d0-497a-b3bb-6c9e653af978', CAST(0x0000A30B00D7AF2E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (8, 1060, N'c36ac041-bdbe-4246-ae9d-e3cc3142c7c9', CAST(0x0000A30B00D7B0C3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (9, 1060, N'a1ca6215-9e87-4dac-b991-1c2f41d14ba1', CAST(0x0000A30B00D7BAEB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (10, 1054, N'4fa4f3cc-42a3-4d9b-975c-4b48fb8a0caa', CAST(0x0000A30B00DCB681 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (11, 1054, N'5a83986c-c8db-403a-a4f8-dfd44f30ce15', CAST(0x0000A30B00EAFF13 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (12, 1065, N'02e1d78a-45a8-4cec-bced-acf830d6f0b3', CAST(0x0000A30B0107D02F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (13, 1065, N'503fcc0a-0199-44cd-b667-b3933b17ddab', CAST(0x0000A30B0107D264 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (14, 1066, N'd5bb40a4-9ed2-43a3-90ea-4b5183cd7a9a', CAST(0x0000A30B0108686E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (15, 1066, N'b38df474-6d5f-40bf-a57f-6882145682bc', CAST(0x0000A30B01086958 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (16, 1066, N'a2f2833d-6535-429f-8a7a-b4c6027d7134', CAST(0x0000A30B013CF715 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (17, 1065, N'd79b08ea-12dd-4feb-a710-d2ca89d94ae1', CAST(0x0000A30B01088364 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (18, 1067, N'2016a822-0cee-4bd7-be35-c37a95f15b39', CAST(0x0000A30B0108959C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (19, 1067, N'dac2c40a-fa62-4318-a411-a741cc681f41', CAST(0x0000A30B01089691 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (20, 1067, N'e08b4aa4-21c6-4476-8ca1-9f971d0a3976', CAST(0x0000A30B0108A69A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (21, 1068, N'2bdf4245-0b0f-4af5-9e19-19ec9a058816', CAST(0x0000A30B0108BE64 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (22, 1068, N'7718150e-6bad-4d43-9d22-e04455940bc5', CAST(0x0000A30B0108BF6B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (23, 1069, N'd3677e69-2b92-4f03-870f-4ed9342e3850', CAST(0x0000A30B0108D9C9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (24, 1069, N'9eb8becd-688d-4147-8b45-fef86e003e0e', CAST(0x0000A30B0108DADC AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (25, 1069, N'dfc7ab9c-e40f-41e0-91d9-a9046d4530de', CAST(0x0000A30B0108E298 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (26, 1069, N'e27e4828-fc29-4df3-b3fb-48cd131d8869', CAST(0x0000A30B0108EB9A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (27, 1068, N'be59a2c5-e1cb-442d-98e8-6ec004cbf400', CAST(0x0000A30B013CF693 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (28, 1069, N'771aa397-e20f-4ed0-aef7-e0feca39e982', CAST(0x0000A30B01091B0B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (29, 1065, N'6b5ff58e-e2a0-41c0-8484-61ff307364d7', CAST(0x0000A30B01091B95 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (30, 1067, N'059c1545-97bb-4087-8e05-609472d8cdac', CAST(0x0000A30B013CF4EC AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (31, 1054, N'98c4a658-b78b-4101-837c-cfd4d63d27f9', CAST(0x0000A30B0109C8C9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (32, 1070, N'96ea989a-0033-4d35-a127-47779ca85652', CAST(0x0000A30B0122720E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (33, 1071, N'f29ca10b-ab37-4823-b146-21f5e393c0ed', CAST(0x0000A30B01229B42 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (34, 1054, N'd4d357ce-a278-467d-8037-c5ab05717416', CAST(0x0000A30B017E56EE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (35, 1054, N'd81d308d-3d38-489a-ab2d-b273764e0737', CAST(0x0000A30B013CF43C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (37, 1065, N'99373f45-0d8b-4dad-98a3-551030778f8a', CAST(0x0000A30B013CF56D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (38, 1069, N'd2eac496-68d4-4a2d-be1b-3dbcf2479202', CAST(0x0000A30B013CF600 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (39, 1054, N'001eb834-8c7a-411b-a225-f5dc31faa67b', CAST(0x0000A30B013E1153 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (40, 1060, N'7a2920ac-19c3-4644-bf65-6a39eaba622a', CAST(0x0000A30B01410B7F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (41, 1060, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', CAST(0x0000A30B01412142 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (42, 1060, N'f6756a99-90af-437f-abbb-d190bb512260', CAST(0x0000A30B01416A2D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (43, 1060, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', CAST(0x0000A30B0142B204 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (44, 1060, N'1b208d54-f459-4967-8a12-b53c279675e6', CAST(0x0000A30B01439A95 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (45, 1060, N'0e829276-7c29-41d7-b47f-119146978c0e', CAST(0x0000A30C000C48DB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (46, 1060, N'e401c327-7266-403a-9863-78fc3c191b7a', CAST(0x0000A30C000C5296 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (47, 1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', CAST(0x0000A30B0146DD19 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (48, 1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', CAST(0x0000A30B0146EA54 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (49, 1069, N'3be7858c-682e-45a4-b09f-1d91086d9775', CAST(0x0000A30B014DD8FE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (50, 1069, N'd1e50115-b6f6-4908-bd04-5d893cfd8457', CAST(0x0000A30B014E6F24 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (51, 1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', CAST(0x0000A30B014E8C74 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (52, 1060, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', CAST(0x0000A30B014E95FD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (53, 1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', CAST(0x0000A30B014F704E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (54, 1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', CAST(0x0000A30B014F7902 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (55, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', CAST(0x0000A30B015259F9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (56, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', CAST(0x0000A30C001A3706 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (57, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', CAST(0x0000A30C001A3D93 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (58, 1054, N'9945b911-2938-459d-b775-c8adc13441ea', CAST(0x0000A30C0025E91B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (59, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', CAST(0x0000A30C001B87F0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (60, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', CAST(0x0000A30C001B8C11 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (61, 1065, N'946a59bf-7878-41f2-a1c6-79aed4ee41cd', CAST(0x0000A30C002386D9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (62, 1069, N'4a9ce66c-947f-4f1b-846d-a537b7b38a7a', CAST(0x0000A30C002386E8 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (63, 1066, N'e073e86a-f624-4f5a-9bd3-23fe5841e5b4', CAST(0x0000A30C002386F5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (64, 1067, N'b6717821-d8bb-476b-8e68-8883820dacd3', CAST(0x0000A30C002386FF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (65, 1068, N'a524a104-d622-4332-8aa6-56a653d4580e', CAST(0x0000A30C0023870E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (66, 1069, N'be6f3ebf-6c59-47db-b09f-08a5ede16d25', CAST(0x0000A30C0023A6F7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (67, 1066, N'f89dfaed-c3f8-4bc5-89c5-7023fc744dd9', CAST(0x0000A30C0023B17B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (68, 1067, N'd2cbb2dc-387c-49fe-ba8d-47b173c1e173', CAST(0x0000A30C0023BA89 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (69, 1068, N'33a63839-f3bd-46c2-84f7-c7c5883c1689', CAST(0x0000A30C0023C620 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (70, 1065, N'c2d44d35-49e2-47c0-a05b-772857aa8f01', CAST(0x0000A30C0025E955 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (71, 1068, N'f7c03f4b-5d5a-46c0-bff3-32ea052318eb', CAST(0x0000A30C0023FD15 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (72, 1067, N'd6434aa6-ad99-40e9-a1f9-97785c2f6e07', CAST(0x0000A30C0023FD23 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (73, 1066, N'6de5f370-087c-477b-b606-dcf3fbf19f27', CAST(0x0000A30C0023FD31 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (74, 1069, N'c3539526-20d9-492d-9191-11b2a9e46ede', CAST(0x0000A30C0025E94C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (75, 1076, N'906bf507-3c47-4190-8507-55a5958fbecb', CAST(0x0000A30C002423DA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (76, 1076, N'b99a8aeb-004b-48d3-8e87-f4e333f39e78', CAST(0x0000A30C002423FF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (77, 1077, N'5e8519e0-656c-434d-95bc-fd366aea2a85', CAST(0x0000A30C00242B68 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (78, 1077, N'76fd6b9e-cc1f-430e-a46b-d3da7d9896be', CAST(0x0000A30C00242B8D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (79, 1078, N'1c375f5f-3956-4cab-b4de-939c76b8f3af', CAST(0x0000A30C0024310C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (80, 1078, N'205c6d9e-9262-47b6-b818-a3e7be626713', CAST(0x0000A30C0024316E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (81, 1080, N'997c8443-e949-4c9d-a510-c6008f2ec77f', CAST(0x0000A30C0024374B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (82, 1080, N'4f688e42-ef58-494c-b969-ed02ef763ac3', CAST(0x0000A30C0024377A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (83, 1081, N'61bbf614-38a8-4ff0-b274-c7849dab76ee', CAST(0x0000A30C00243F2C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (84, 1081, N'bb2f40f4-82e2-45de-87a7-73a896595b1e', CAST(0x0000A30C00243F56 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (85, 1082, N'285f3dca-60e6-419f-b8e0-0c900caceec9', CAST(0x0000A30C00244A58 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (86, 1082, N'75866210-b028-4c52-b71e-63a1a76c2766', CAST(0x0000A30C00244A7E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (87, 1067, N'fe31c5b0-537d-4bd3-b515-10314997c164', CAST(0x0000A30C00247044 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (88, 1068, N'3a8bbf65-56d4-4962-b90c-cd75d0f58784', CAST(0x0000A30C0024707C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (89, 1066, N'3427b47c-56a1-4d3e-ad0f-69d036331ecf', CAST(0x0000A30C0024708A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (90, 1084, N'623b9ca4-b4e5-4535-b533-ba101d8a4919', CAST(0x0000A30C00247C3A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (91, 1084, N'8f240c1d-2e9f-4432-9a2d-96375a1ad85d', CAST(0x0000A30C00247CAA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (92, 1085, N'21b03ec1-253c-4ac3-a1fb-17b8973a3a42', CAST(0x0000A30C00248832 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (93, 1085, N'9fa7ba2e-2e8b-4352-8e39-e507aa37b69d', CAST(0x0000A30C00248866 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (94, 1086, N'f7596132-4713-47d9-aff8-d28fb95a4df6', CAST(0x0000A30C00248E93 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (95, 1086, N'4d3b708f-7bf1-4f97-b9bd-cb09efc00b01', CAST(0x0000A30C00248EC2 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (96, 1087, N'f5753041-68fe-4365-b2e2-6b76a1614e39', CAST(0x0000A30C00249516 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (97, 1087, N'6d463da2-4476-4818-b641-153162fc7936', CAST(0x0000A30C00249541 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (98, 1088, N'bec0255b-cda2-4e0a-8810-5b1c9b4ecf77', CAST(0x0000A30C0024997B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (99, 1088, N'60589e4c-1517-4206-9f74-f11ef8aa861a', CAST(0x0000A30C002499AA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (100, 1084, N'15e97317-2b6f-4dc2-9de0-f33aeb5da76c', CAST(0x0000A30C0025B23B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (101, 1084, N'04421ee4-e917-46d5-b0a1-d26494abb947', CAST(0x0000A30C0025B252 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (102, 1091, N'0c65b3c7-0df7-423d-8ad8-82dfe9d77a73', CAST(0x0000A30C0025B945 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (103, 1091, N'ae61d94d-e7db-4a81-976e-8b6da2b46ff5', CAST(0x0000A30C0025B96A AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (104, 1091, N'14d1982d-c684-4e7e-abf6-ba01cb9e267e', CAST(0x0000A30C0025DC41 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (105, 1091, N'8b20e26f-ae81-4b3a-93d6-3c690ba22c5d', CAST(0x0000A30C0025E2CF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (106, 1066, N'08f41152-20ed-4f24-8f21-1d87ca3500f3', CAST(0x0000A30C0025E929 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (107, 1068, N'5a43da8a-9a17-47c1-b080-bff98fdeeeca', CAST(0x0000A30C0025E934 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (108, 1067, N'b96cb2a8-58be-41a1-a933-5bf72c5fb278', CAST(0x0000A30C0025E942 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (109, 1091, N'ba292480-d5ab-4f7f-b410-beacdee797db', CAST(0x0000A30C0025FBD9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (110, 1093, N'078a0ada-c219-42e1-9646-10e0537b1510', CAST(0x0000A30B01644B88 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (111, 1093, N'659c629d-91bd-4528-9246-a6a0408b928a', CAST(0x0000A30B01645D6C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (112, 1093, N'5cde28c8-15e2-4fdc-b613-2bc907244995', CAST(0x0000A30B016468DA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (113, 1065, N'3df2d94b-4c08-416f-a0b4-62b33dd599ab', CAST(0x0000A30B01646935 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (114, 1069, N'2f6d9834-c374-4d57-a684-6d5f0a4e8063', CAST(0x0000A30B016469C0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (115, 1067, N'96e5d485-d19d-4853-a4e0-03e8e78a32be', CAST(0x0000A30B01646A4A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (116, 1068, N'11212ba1-4c67-4676-92da-f05990feb076', CAST(0x0000A30B01646AD5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (117, 1066, N'2d93c073-1aba-4021-84ff-3039080dacbe', CAST(0x0000A30B01646B61 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (118, 1094, N'ac66e4a6-02dd-42c8-b0d3-a21d12365763', CAST(0x0000A30B016489EC AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (119, 1094, N'71374bec-8b38-4f28-8735-40b3eb45f99f', CAST(0x0000A30B01648AFD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (120, 1094, N'1e5ad465-3f68-44e1-883a-9b1dead92ced', CAST(0x0000A30B0164AB19 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (121, 1094, N'f193d91a-c41d-47c3-8289-a4d70f35b5f0', CAST(0x0000A30B0164B558 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (122, 1094, N'a91a9142-74fd-4a96-afdb-0015ca09ed69', CAST(0x0000A30B01653DFA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (123, 1054, N'df741113-1693-40dd-a84f-cbec0ca7efde', CAST(0x0000A30B016FC97D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (124, 1054, N'f4a497e8-91ca-4773-ab0d-db96380d98b3', CAST(0x0000A30B016FD867 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (125, 1094, N'83ab7492-6606-49e4-a8a4-f039c0e41a85', CAST(0x0000A30C00384B07 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (126, 1054, N'efe13d8e-fdda-4fbd-9740-6060e40c360e', CAST(0x0000A30B0171A6BA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (127, 1054, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', CAST(0x0000A30B017232C6 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (128, 1097, N'3c95b146-e097-4d26-b195-53e7ca68b64c', CAST(0x0000A30C00394C32 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (129, 1097, N'27e0ffcf-262b-4b2c-b0df-e6ff965d08f8', CAST(0x0000A30C00395314 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (130, 1076, N'5c78daf4-0f07-4fe7-b025-562ff8a16f85', CAST(0x0000A30C0039531D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (131, 1077, N'744e12af-67df-483b-b0a7-d8a3b13f6fc9', CAST(0x0000A30C00395327 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (132, 1078, N'828586e1-f01d-434b-9e1f-8875291aedee', CAST(0x0000A30C00395330 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (133, 1080, N'18930665-5e2e-469e-9420-1d71c1ab45e5', CAST(0x0000A30C00395339 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (134, 1098, N'cfdb4385-c4ec-44a0-8cc7-8e460c73517d', CAST(0x0000A30C00395FF0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (135, 1098, N'12c5aec2-ba60-456c-b9a2-048d38471f98', CAST(0x0000A30C00396660 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (136, 1081, N'a32e6396-76d2-4c6d-9881-ccb0f232e642', CAST(0x0000A30C00396669 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (137, 1082, N'24737ac7-033c-4e8b-910d-13a143023498', CAST(0x0000A30C00396677 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (138, 1099, N'93575fc2-9009-4d17-a105-cdc9d1f5ead1', CAST(0x0000A30C00397479 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (139, 1100, N'909b3d7a-fbc1-479b-b70f-c18e4922b9a2', CAST(0x0000A30C00397E75 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (140, 1101, N'933e2aae-e14c-4606-86d1-e519fd418b54', CAST(0x0000A30C00398343 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (141, 1102, N'38da9f1d-d19c-4808-8134-683bccfbdb26', CAST(0x0000A30C003989AF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (142, 1103, N'0f73ba4d-dc8a-47bd-982b-02a4ce4ba252', CAST(0x0000A30C00398EE7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (143, 1104, N'a4e076af-12c3-4a31-9e15-bee544987936', CAST(0x0000A30C00399507 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (144, 1105, N'bf2afd83-9f67-4402-a1c6-e4df20687a46', CAST(0x0000A30C00399C4C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (145, 1054, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', CAST(0x0000A30B0172BAF1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (146, 1106, N'2f385530-cf30-4615-8bdc-780bbd4cbf28', CAST(0x0000A30C0039A201 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (147, 1107, N'a4d02287-e437-4a47-b96f-506fc5f1635b', CAST(0x0000A30C0039A6E7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (148, 1108, N'5e0d97d6-d0bc-4016-8c92-af6c789b51ca', CAST(0x0000A30C0039AE59 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (149, 1109, N'24a6591c-96a6-4261-932e-0d00bd1717a1', CAST(0x0000A30C0039B485 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (150, 1107, N'67506182-f161-4c5b-a2af-52ce14683f72', CAST(0x0000A30C0039B95B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (151, 1086, N'99410205-1bb5-4831-9e10-80fdfc419db9', CAST(0x0000A30C0039B964 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (152, 1087, N'586f94b5-70b1-4366-8666-0a876300e8df', CAST(0x0000A30C0039B96E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (153, 1088, N'06dddcce-e02c-45e8-a991-7d645d651717', CAST(0x0000A30C0039B977 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (154, 1110, N'8d8b94dc-ddd9-4181-9ced-2ec1afee75ee', CAST(0x0000A30C0039C1E9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (155, 1054, N'eb2a7148-33cc-4594-86e4-a564a1e9248a', CAST(0x0000A30B0173093C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (156, 1054, N'4d4d7a41-3634-49d9-a60f-963346169ef7', CAST(0x0000A30B01736765 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (157, 1054, N'08447b68-0048-46fd-98ba-a74e4ec74e37', CAST(0x0000A30B0173F1B9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (158, 1054, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', CAST(0x0000A30B017405EA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (159, 1054, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', CAST(0x0000A30B0177B52D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (160, 1054, N'8239187a-3432-406c-9aa2-37acebf434c1', CAST(0x0000A30B01783D6C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (161, 1054, N'8d91136a-2149-4114-8801-a36931d71893', CAST(0x0000A30B01788723 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (162, 1094, N'9cc864d8-00b5-49d5-90f7-6d748e58ce00', CAST(0x0000A30B017C5671 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (163, 1094, N'07207e71-03d0-40a4-aa79-67eeedbb53fe', CAST(0x0000A30B017EDD30 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (164, 1115, N'39dea376-f3a0-4534-9b9a-dfd5d71dc310', CAST(0x0000A30C0046879E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (165, 1115, N'7b0b11e6-04a6-4ab2-97ea-c8ba58d75de6', CAST(0x0000A30C004687E5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (166, 1115, N'8c9a8b62-8f75-4a57-b139-5b0e40708cf5', CAST(0x0000A30C0046A702 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (167, 1115, N'9edbbd77-d914-4cba-81a8-598d25bf2211', CAST(0x0000A30C004B6D4B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (168, 1116, N'd7e4d761-5229-48f8-a970-d8091e888609', CAST(0x0000A30C004B0E2E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (169, 1116, N'b9d11cbe-88a6-40c6-88cc-faa818c08b7d', CAST(0x0000A30C004B0E7E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (170, 1117, N'd5af004f-ca6d-4961-aba5-2059178be2a1', CAST(0x0000A30C004B1826 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (171, 1117, N'7c6462c1-86e7-4615-8668-72a3f04d2081', CAST(0x0000A30C004B1850 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (172, 1118, N'7eb2642b-0131-4814-9387-ddc87f4838c4', CAST(0x0000A30C004B21B2 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (173, 1118, N'adabe667-c1ac-4267-b8e9-831c6d6901c3', CAST(0x0000A30C004B21D7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (174, 1116, N'a352df75-b91f-4c04-84e2-197309c6fa3c', CAST(0x0000A30C004B338D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (175, 1117, N'3f925ef2-ea2e-4be9-bb90-15126483dd90', CAST(0x0000A30C004B6684 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (176, 1093, N'970a4805-8382-4e35-91fc-67d03999e079', CAST(0x0000A30C004B6D42 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (177, 1094, N'bc77814c-1a04-4ff5-9ad3-e097facb7b23', CAST(0x0000A30C004B6D55 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (178, 1116, N'36dcc88a-304a-4ba1-a9ad-19a4dd2380ef', CAST(0x0000A30C004B7843 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (179, 1117, N'16b78d42-cb65-4a53-808c-bc53968f303b', CAST(0x0000A30C004B998E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (180, 1118, N'45583017-fc24-42fb-a79e-cf4925af25b3', CAST(0x0000A30C004B930D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (181, 1118, N'84fa2d33-0a8f-433a-9c25-2f20a30adb4e', CAST(0x0000A30C004BB431 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (182, 1094, N'd23b5633-a300-40ba-b0a1-eb1ce0eccdc3', CAST(0x0000A30B01897C6A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (183, 1115, N'73ed39d3-f093-454b-b60e-518a77d53e64', CAST(0x0000A30B018A4CA0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (184, 1094, N'bd541b2a-67ce-488a-9792-9eee7ddb83e0', CAST(0x0000A30C000074E9 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (185, 1054, N'8266cf9a-b72c-46a0-bc06-416f4304296a', CAST(0x0000A30C0003D52E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (186, 1054, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', CAST(0x0000A30C0003DF65 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (187, 1069, N'd869e49c-d785-453e-8fad-13a75493162b', CAST(0x0000A30C00590413 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (188, 1082, N'333da0ac-714e-4d7b-9b98-59282997e2db', CAST(0x0000A30C0059042B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (189, 1081, N'39eafedc-46c4-4617-b108-52a38074be37', CAST(0x0000A30C00590434 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (190, 1098, N'ff82bd65-2c95-469a-8126-b1c29a22e472', CAST(0x0000A30C0059043D AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (191, 1104, N'7ad53d75-16b8-4a7c-b695-b948ecb1bd0d', CAST(0x0000A30C00590447 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (192, 1103, N'5c82c03c-2a46-40aa-a6e0-1a54a75db834', CAST(0x0000A30C0059044B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (193, 1067, N'7456490d-713b-4867-a8c4-eafd1a89d6d5', CAST(0x0000A30C005911CE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (194, 1091, N'e6d86568-3e52-4239-a0b0-d7d341d0009c', CAST(0x0000A30C005911D7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (195, 1085, N'fc185468-522e-4acb-bf3c-dfee751bfa83', CAST(0x0000A30C005911E0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (196, 1105, N'625a5892-915d-40cd-9a8a-47d0fb4b9b96', CAST(0x0000A30C005911EF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (197, 1068, N'd4d2cfc9-978c-4a21-abab-7b58b3e391e6', CAST(0x0000A30C00591FB5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (198, 1088, N'45d80349-d6d9-4b75-9c98-b170adddfd7c', CAST(0x0000A30C00591FC3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (199, 1087, N'bf53ee50-c556-4848-b5d6-532b94b1ed42', CAST(0x0000A30C00591FCD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (200, 1086, N'19c74e5a-35cb-4f94-a905-2ad73ae5a8f2', CAST(0x0000A30C00591FD6 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (201, 1107, N'a0cbab08-b5bb-422e-a196-a83900d9d864', CAST(0x0000A30C00591FEE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (202, 1109, N'8013c2ad-0f9b-4de3-b0b9-59785ac7f7f4', CAST(0x0000A30C00591FF7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (203, 1108, N'42d29064-7840-44d5-ac38-e4006a052048', CAST(0x0000A30C00591FFC AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (204, 1106, N'0965aff9-348c-4946-95c9-5f8464ee6a7e', CAST(0x0000A30C00592001 AS DateTime), NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (205, 1066, N'000e2e49-b40e-44a7-9416-02826949ef82', CAST(0x0000A30C00592F52 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (206, 1110, N'53f66ee9-5f21-4961-b8ed-3bddac45dd0a', CAST(0x0000A30C00592F5B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (207, 1065, N'4774f0d0-3bba-49e5-8c27-aa2aa2c1d7d3', CAST(0x0000A30C00593D96 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (208, 1080, N'a366970e-8785-4761-80de-680f06cf35e4', CAST(0x0000A30C00593DA4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (209, 1078, N'9a0a54d3-1029-4f8d-ae72-8c82a1892dec', CAST(0x0000A30C00593DAD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (210, 1077, N'c0dc39ae-4311-4225-888e-3c2209c7e28e', CAST(0x0000A30C00593DBB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (211, 1076, N'6fa81a28-70ef-4ac1-8752-060702cea736', CAST(0x0000A30C00593DCE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (212, 1097, N'c5f29f48-9d78-4e72-90f8-e7443962c58c', CAST(0x0000A30C00593DD7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (213, 1102, N'07f1347c-c44f-4b07-aca2-900f8ca5a908', CAST(0x0000A30C00593DE1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (214, 1101, N'ebe82f51-bbf8-4ea9-a5ae-2a7cf8c8eca0', CAST(0x0000A30C00593DEA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (215, 1100, N'0819806d-b85f-42ae-a2c3-acd9961f3ef8', CAST(0x0000A30C00593DF4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (216, 1099, N'd4217e0d-2846-495e-9e1e-19c317de4b24', CAST(0x0000A30C00593DFD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (217, 1094, N'9db668a5-6ab4-438f-a811-88183abf9507', CAST(0x0000A30C00596443 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (218, 1119, N'8a51613a-1e0f-4a09-8349-7de0ad5610c7', CAST(0x0000A30C00596FE1 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (219, 1119, N'cbff34f9-c7de-4a60-9b0b-d080a7ad22f4', CAST(0x0000A30C0007F4EF AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (220, 1121, N'8619d616-abe7-452f-983a-899e6e479e9b', CAST(0x0000A30C00081DEB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (221, 1094, N'8e2b3270-4cde-4aae-b784-dd363af82c97', CAST(0x0000A30C00084009 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (222, 1094, N'f46771dc-fdb6-4f11-b142-0fb5f3f96dc9', CAST(0x0000A30C000895C6 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (223, 1122, N'18f74886-2641-4a0f-b040-77016267b70f', CAST(0x0000A30C005B0B8A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (224, 1122, N'd8d31c0f-fe16-403e-a0c8-117cec23ee42', CAST(0x0000A30C005B0BC7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (225, 1122, N'f9adb43e-0e40-405d-bd23-829274b0c9cc', CAST(0x0000A30C005B2ECE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (226, 1121, N'b763de81-6cc4-481e-9c15-de1d0ee54640', CAST(0x0000A30C0008B6E8 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (227, 1069, N'a5fb736b-9fc5-485a-a95b-d2b1317089b7', CAST(0x0000A30C0008C354 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (228, 1122, N'c8f0e9cf-263f-4372-ade6-91f0f5ebf7ce', CAST(0x0000A30C005B6D8A AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (229, 1121, N'9385456d-b14a-43a0-b7c8-1a53fc5c94f3', CAST(0x0000A30C000A7187 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (230, 1123, N'209f7a0e-f9e2-4e2b-83e7-fc092d501fb2', CAST(0x0000A30C000B62BD AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (231, 1123, N'2733fbde-e2d3-4f3e-94a8-c3a575f68f9f', CAST(0x0000A30C000B63B8 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (232, 1123, N'afc3ec37-a91e-4470-836f-98ba89095190', CAST(0x0000A30C000B8945 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (233, 1123, N'7d00fdf5-e0b4-4573-bd4a-38d6ec845f4d', CAST(0x0000A30C000DDE06 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (234, 1121, N'd98ecab4-7923-4b24-b0d6-cf685e084f01', CAST(0x0000A30C000DDE85 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (235, 1124, N'211dee2f-92e2-4406-98e7-69ea46fa6d16', CAST(0x0000A30C000E09B0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (236, 1124, N'023b9399-255d-45b0-a0de-1d634d17129a', CAST(0x0000A30C000E0B5E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (237, 1124, N'6812337f-cc91-4c3e-be5c-3050596083d4', CAST(0x0000A30C000E32EB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (238, 1125, N'6368b073-9120-4203-b4b9-e8411943608e', CAST(0x0000A30C000E502E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (239, 1125, N'efc803f0-1ebd-47f4-b18c-afd9263f4c6d', CAST(0x0000A30C000E5131 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (240, 1125, N'4be50b7b-e5d0-4019-a530-25a5a0aa927d', CAST(0x0000A30C000E67F5 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (241, 1126, N'b50259fa-6455-4976-a12f-930913d5b336', CAST(0x0000A30C000EAB51 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (242, 1126, N'd19cbd4f-46e5-4c4d-8033-aeef2225ec14', CAST(0x0000A30C000EAC5E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (243, 1126, N'c6361add-ef1a-4d82-b9b3-e7971c9b5f56', CAST(0x0000A30C000EB4F8 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (244, 1127, N'07c11df7-aa4e-4561-b130-e7f464a0c9de', CAST(0x0000A30C000EC58F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (245, 1127, N'3b261c21-cd45-4840-845d-de53a90c8b93', CAST(0x0000A30C000EC663 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (246, 1127, N'13cd5dbc-088f-4ccf-8ed7-4ae0e285d52a', CAST(0x0000A30C000ED5C4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (247, 1127, N'fc0b338d-0e81-4593-a52a-4b8b2ce81536', CAST(0x0000A30C000EE2DB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (248, 1054, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', CAST(0x0000A30C000F8D76 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (249, 1077, N'038f4991-1984-48e5-afc3-6a967ac79020', CAST(0x0000A30C0063077E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (250, 1078, N'dd8f92e2-b586-4aad-b4ac-492a333ebe0d', CAST(0x0000A30C0063168C AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (251, 1128, N'7afc11f8-6aac-47e8-89d3-aee551cd5c7e', CAST(0x0000A30C00634640 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (252, 1128, N'86a84e4e-f6a3-4325-8198-f26d1eb36d05', CAST(0x0000A30C0063468B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (253, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', CAST(0x0000A30C0010ED46 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (254, 1128, N'25ed5290-d2ae-40d6-b1f4-7f407a934656', CAST(0x0000A30C00638E6F AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (255, 1076, N'a1505ed9-aa20-4ff3-82f4-11fb6771615d', CAST(0x0000A30C00638E8B AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (256, 1078, N'7b6752a2-22f9-4350-82c0-6febcd1a55f5', CAST(0x0000A30C00638E9E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (257, 1080, N'eedb72da-0ea4-4d8d-9c69-39cf4562648e', CAST(0x0000A30C00638EA4 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (258, 1129, N'847e7ba8-feb8-4e28-a650-254e3cc5886e', CAST(0x0000A30C0063AF26 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (259, 1129, N'4ba1d7c9-82cd-4fbc-80a6-46ee0321773f', CAST(0x0000A30C0063AF5E AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (260, 1130, N'ced16b35-fb8a-4c8e-9be3-0fce059fc5d3', CAST(0x0000A30C0063CCCB AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (261, 1130, N'87d9548f-ef50-4ed5-8e50-2a17b9832aaa', CAST(0x0000A30C0063CD03 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (262, 1129, N'21c994a6-7a0f-4cbc-a336-c1d886f1bb0a', CAST(0x0000A30C0063E4E2 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (263, 1076, N'7f2aa1c9-7eec-4454-aba5-8294e0c98a54', CAST(0x0000A30C0063E4F0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (264, 1130, N'fb80be66-045a-46b7-a74a-237f6b15864b', CAST(0x0000A30C0063E4FA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (265, 1080, N'cc057683-168c-4218-98bd-aadb22bf6a09', CAST(0x0000A30C0063E503 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (266, 1131, N'd7858675-4bdc-4af8-ace3-dc523b47f173', CAST(0x0000A30C006412DE AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (267, 1132, N'e867077d-4411-43ec-a89a-4c113b91f424', CAST(0x0000A30C00649510 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (268, 1132, N'0f4d91b8-b599-44c5-a6c4-311e6bdebe76', CAST(0x0000A30C00649552 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (269, 1131, N'e36f966e-af30-4292-827e-3480929fc715', CAST(0x0000A30C0064A0F0 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (270, 1132, N'b126e8f1-daed-45be-b756-299199de5781', CAST(0x0000A30C0064C441 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (271, 1132, N'a92e8c7d-b13f-4e05-8281-c0d902bc071c', CAST(0x0000A30C0064C4D7 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (272, 1133, N'06251646-5e8b-4125-9251-c27fe28116fe', CAST(0x0000A30C0064F600 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (273, 1133, N'dd364868-62d7-449e-ba4d-76df95a08400', CAST(0x0000A30C0064F639 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (274, 1134, N'99dc70b6-aae3-4f7a-87ec-525ecc5f366a', CAST(0x0000A30C006504DA AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (275, 1134, N'7f37e3c8-aece-478e-8f48-9330f5ce22ae', CAST(0x0000A30C00650500 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (276, 1133, N'baf1f86d-007e-42cb-9581-6868f8e58be1', CAST(0x0000A30C00652CD3 AS DateTime), NULL)
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate], [LanguageLocale]) VALUES (277, 1134, N'05bedb18-0430-40d6-b48a-9f3841329677', CAST(0x0000A30C006591E2 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[cmsContentVersion] OFF
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 04/13/2014 01:14:01 ******/
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1051, 1063, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1051, 1092, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1063, 1063, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1063, 1089, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1063, 1092, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1092, 1079, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1092, 1095, 4)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1092, 1096, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1092, 1111, 3)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1092, 1112, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1092, 1120, 5)
/****** Object:  Table [dbo].[cmsTask]    Script Date: 04/13/2014 01:14:03 ******/
CREATE TABLE [dbo].[cmsTask](
	[closed] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskTypeId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[parentUserId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Comment] [nvarchar](500) NULL,
 CONSTRAINT [PK_cmsTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 04/13/2014 01:14:06 ******/
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentGroupId] [int] NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (3, NULL, 1032, N'Image', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (4, NULL, 1033, N'File', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (5, NULL, 1031, N'Contents', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (6, NULL, 1059, N'Advanced Settings', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (7, NULL, 1049, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (8, NULL, 1049, N'SEO', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (9, 7, 1051, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (10, 7, 1063, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (11, NULL, 1059, N'Social', 2)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (12, 7, 1089, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (13, NULL, 1075, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (14, 13, 1079, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (15, 13, 1095, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (16, 13, 1096, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (17, 13, 1111, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (18, 13, 1112, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (19, 13, 1120, N'Main Content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (20, NULL, 1059, N'Content Settings', 0)
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
/****** Object:  Table [dbo].[cmsDataTypePreValues]    Script Date: 04/13/2014 01:14:07 ******/
CREATE TABLE [dbo].[cmsDataTypePreValues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datatypeNodeId] [int] NOT NULL,
	[value] [nvarchar](2500) NULL,
	[sortorder] [int] NOT NULL,
	[alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_cmsDataTypePreValues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (3, -87, N',code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (4, 1041, N'default', 0, N'group')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (5, 1061, N'URL|Content|Media|Upload', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (6, 1061, N'Json', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (7, 1061, N'True', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (8, 1061, N'True', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (9, 1061, N'Content', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (10, 1062, N'URL|Content|Media|Upload', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (11, 1062, N'Json', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (12, 1062, N'True', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (13, 1062, N'True', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (14, 1062, N'Content', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (15, 1072, N'Center', 1, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (16, 1072, N'Top', 2, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (17, 1072, N'Right', 3, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (18, 1072, N'Left', 4, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (19, 1072, N'Bottom', 5, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (20, 1034, N'', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (21, 1083, N'Left', 1, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (22, 1083, N'Right', 2, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (23, 1090, N'Small', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (24, 1090, N'Medium', 1, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (25, 1090, N'Large', 2, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (26, -92, N'', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (27, 1114, N'Left', 1, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (28, 1114, N'Center', 2, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (29, 1114, N'Right', 3, N'')
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
/****** Object:  Table [dbo].[cmsMember]    Script Date: 04/13/2014 01:14:09 ******/
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 04/13/2014 01:14:11 ******/
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[umbracoUser2NodePermission]    Script Date: 04/13/2014 01:14:12 ******/
CREATE TABLE [dbo].[umbracoUser2NodePermission](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 04/13/2014 01:14:14 ******/
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nchar](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[umbracoUser2app]    Script Date: 04/13/2014 01:14:15 ******/
CREATE TABLE [dbo].[umbracoUser2app](
	[user] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user2app] PRIMARY KEY CLUSTERED 
(
	[user] ASC,
	[app] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (1, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (2, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (2, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (2, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (2, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (2, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (2, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (2, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (3, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (3, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (3, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (3, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (3, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (3, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (3, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (4, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (4, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (4, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (4, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (4, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (4, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (4, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (5, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (5, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (5, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (5, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (5, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (5, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (5, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (6, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (6, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (6, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (6, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (6, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (6, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (6, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (7, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (7, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (7, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (7, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (7, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (7, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (7, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (8, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (8, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (8, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (8, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (8, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (8, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (8, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (9, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (9, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (9, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (9, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (9, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (9, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (9, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (10, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (10, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (10, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (10, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (10, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (10, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (10, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (11, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (11, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (11, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (11, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (11, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (11, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (11, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (12, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (12, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (12, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (12, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (12, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (12, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (12, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (13, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (13, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (13, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (13, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (13, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (13, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (13, N'users')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (14, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (14, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (14, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (14, N'member')
GO
print 'Processed 100 total records'
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (14, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (14, N'translation')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (14, N'users')
/****** Object:  Table [dbo].[cmsPreviewXml]    Script Date: 04/13/2014 01:14:16 ******/
CREATE TABLE [dbo].[cmsPreviewXml](
	[nodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsPreviewXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', CAST(0x0000A30C000F8E4D AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-13T00:56:37" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false}]}]]></navigationLinks>
  <utilityLinks><![CDATA[{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}]]></utilityLinks>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'8239187a-3432-406c-9aa2-37acebf434c1', CAST(0x0000A30B01783E65 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:49:50" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<h1><sub>Hello</sub>, <em>this </em><sup>is </sup><u>some</u></h1>
<p>&nbsp;<em>new</em><br class="aloha-end-br"><strong><abbr title="content long form">content</abbr></strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
  <utilityLinks><![CDATA[]]></utilityLinks>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'8266cf9a-b72c-46a0-bc06-416f4304296a', CAST(0x0000A30C0003D62C AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-13T00:13:57" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<h1><sub>Hello</sub>, <em>this </em><sup>is </sup><span style="text-decoration: underline;">some</span></h1>
<p> <em>new</em><br class="aloha-end-br" /><strong>content</strong></p>
<p> </p>
<ol>
<li>One</li>
<li>Two</li>
</ol>
<ul>
<li>Bullet
<ul>
<li>Points</li>
</ul>
</li>
</ul>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
  <utilityLinks><![CDATA[{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}]]></utilityLinks>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'4fa4f3cc-42a3-4d9b-975c-4b48fb8a0caa', CAST(0x0000A30B00DCB735 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T13:23:35" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <mainContent><![CDATA[<p>Hello, this is some main <strong>content</strong></p>]]></mainContent>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', CAST(0x0000A30C0003E072 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-13T00:14:05" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
  <utilityLinks><![CDATA[{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}]]></utilityLinks>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'efe13d8e-fdda-4fbd-9740-6060e40c360e', CAST(0x0000A30B0171A7A0 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:25:51" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="David Ly" writerID="7" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some<img width="500"  height="324" src="/media/1001/Raingarden-pic_500x324.jpg" alt="Raingarden Pic"/>  new <strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', CAST(0x0000A30B0172BBFB AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:29:47" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some</p>
<div class="ui-wrapper aloha-image-box-active Aloha_Image_Resize aloha" style="overflow: hidden; position: relative; width: 400px; height: 259px; top: auto; left: auto; margin: 0px; display: inline-block; float: none;"><img width="500"  height="324" src="/media/1001/Raingarden-pic_500x324.jpg" alt="Raingarden Pic" class="ui-resizable" style="height: 259px; width: 400px; position: static; margin: 0px; resize: none; zoom: 1; display: inline-block;"/>
<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 1000;"></div>
<div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 1000;"></div>
<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 1000;"></div>
<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 1000;"></div>
</div>
<p> new <strong>content</strong></p>
<p> </p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
  <utilityLinks><![CDATA[{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}]]></utilityLinks>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', CAST(0x0000A30B0177B639 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:47:54" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<h1>Hello, <em>this </em>is some</h1>
<p>&nbsp;<em>new</em><br class="aloha-end-br"><strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
  <utilityLinks><![CDATA[]]></utilityLinks>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'4d4d7a41-3634-49d9-a60f-963346169ef7', CAST(0x0000A30B0173683A AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:32:14" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<h1>Hello, <i>this</i> is some</h1><div class="ui-wrapper aloha-image-box-active Aloha_Image_Resize aloha" style="overflow: hidden; position: relative; width: 400px; height: 259px; top: auto; left: auto; margin: 0px; display: inline-block; float: none;" contenteditable="false"><img alt="Raingarden Pic" height="324" src="/media/1001/Raingarden-pic_500x324.jpg" width="500" class="ui-resizable" style="height: 259px; width: 400px; position: static; margin: 0px; resize: none; zoom: 1; display: inline-block;" title="Image!"><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 1000;"></div></div> &nbsp;new&nbsp;<strong>content</strong><p></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', CAST(0x0000A30B01740723 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:34:29" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<h1>Hello, this is some</h1>
<p>&nbsp;<i>new</i><br class="aloha-end-br"><strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'8d91136a-2149-4114-8801-a36931d71893', CAST(0x0000A30B0178880F AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:50:53" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<h1><sub>Hello</sub>, <em>this </em><sup>is </sup><u>some</u></h1>
<p>&nbsp;<em>new</em><br class="aloha-end-br"><strong><abbr title="content long form">content</abbr></strong></p><p><br></p><ol><li>One</li><li>Two</li></ol><ul><li>Bullet<ul><li>Points</li></ul></li></ul>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
  <utilityLinks><![CDATA[]]></utilityLinks>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'eb2a7148-33cc-4594-86e4-a564a1e9248a', CAST(0x0000A30B01730A13 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:30:54" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<h1>Hello, this is some</h1><div class="ui-wrapper aloha-image-box-active Aloha_Image_Resize aloha" style="overflow: hidden; position: relative; width: 400px; height: 259px; top: auto; left: auto; margin: 0px; display: inline-block; float: none;" contenteditable="false"><img alt="Raingarden Pic" height="324" src="/media/1001/Raingarden-pic_500x324.jpg" width="500" class="ui-resizable" style="height: 259px; width: 400px; position: static; margin: 0px; resize: none; zoom: 1; display: inline-block;" title="Image!"><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 1000;"></div></div> &nbsp;new&nbsp;<strong>content</strong><p></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'08447b68-0048-46fd-98ba-a74e4ec74e37', CAST(0x0000A30B0173F292 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:34:12" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="David Ly" writerID="7" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<h1>Hello, this is some</h1>
<p> new <strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'd81d308d-3d38-489a-ab2d-b273764e0737', CAST(0x0000A30B012C74AD AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T18:13:54" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some main <strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'e4c6dcd1-1a1c-48c7-a202-c59fe96233b0', CAST(0x0000A30A00276C71 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-11T02:23:32" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1053" nodeTypeAlias="Home" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'd4d357ce-a278-467d-8037-c5ab05717416', CAST(0x0000A30B017E575A AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T23:12:03" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Zach Iniguez" writerID="8" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some main <strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <siteTitle>Metro Blooms</siteTitle>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'9945b911-2938-459d-b775-c8adc13441ea', CAST(0x0000A30C001A4443 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-13T01:35:37" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Zach Iniguez" writerID="8" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some main <strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"#","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"#","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"#","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"#","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"#","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'df741113-1693-40dd-a84f-cbec0ca7efde', CAST(0x0000A30B016FCA5C AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:19:04" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some changed&nbsp;<strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"#","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"#","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"#","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"#","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"#","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'98c4a658-b78b-4101-837c-cfd4d63d27f9', CAST(0x0000A30B0109C9A0 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T16:07:41" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <mainContent><![CDATA[<p>Hello, this is some main <strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', CAST(0x0000A30B0172339F AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:27:51" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some</p><div class="ui-wrapper aloha-image-box-active Aloha_Image_Resize aloha" style="overflow: hidden; position: relative; width: 400px; height: 259px; top: auto; left: auto; margin: 0px; display: inline-block; float: none;" contenteditable="false"><img alt="Raingarden Pic" height="324" src="/media/1001/Raingarden-pic_500x324.jpg" width="500" class="ui-resizable" style="height: 259px; width: 400px; position: static; margin: 0px; resize: none; zoom: 1; display: inline-block;" title="Image!"><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 1000;"></div></div> &nbsp;new&nbsp;<strong>content</strong><p></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'ff8d8742-b124-4e76-bff9-d762a826a481', CAST(0x0000A30A0028C005 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-11T02:28:21" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1053" nodeTypeAlias="Home" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'f4a497e8-91ca-4773-ab0d-db96380d98b3', CAST(0x0000A30B016FD96F AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T22:19:17" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some new&nbsp;<strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"#","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"#","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"#","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"#","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"#","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'eeee29e0-b4d7-48e6-baf7-ddff0e74d318', CAST(0x0000A30B00D09AA5 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T12:39:29" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'5a83986c-c8db-403a-a4f8-dfd44f30ce15', CAST(0x0000A30B00EB0009 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T14:15:35" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Wade Kallhoff" writerID="1" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <mainContent><![CDATA[<p>Hello, this is some main <strong>content</strong></p>]]></mainContent>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'd184786d-ee8f-4ba1-8ce5-ed5d7d8fa495', CAST(0x0000A30A002968F6 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-11T02:30:46" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1052" nodeTypeAlias="Home" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1054, N'001eb834-8c7a-411b-a225-f5dc31faa67b', CAST(0x0000A30B013E1223 AS DateTime), N'<Home id="1054" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2014-04-11T02:23:31" updateDate="2014-04-12T19:18:02" nodeName="Home" urlName="home" path="-1,1054" isDoc="" nodeType="1051" creatorName="Admin" writerName="Admin" writerID="0" template="1056" nodeTypeAlias="Home">
  <pageTitle>Metro Bloom</pageTitle>
  <pageDescription>Metro Bloom</pageDescription>
  <pageAuthor>Metro Bloom</pageAuthor>
  <pageKeywords></pageKeywords>
  <mainContent><![CDATA[<p>Hello, this is some main <strong>content</strong></p>]]></mainContent>
  <navigationLinks><![CDATA[{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"#","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"#","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"#","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"#","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"#","NewWindow":false}]}]]></navigationLinks>
  <image>1071</image>
  <siteTitle>Metro Blooms</siteTitle>
</Home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', CAST(0x0000A30B014F79CB AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T20:21:25" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', CAST(0x0000A30C0010EE4E AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-13T01:01:37" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
  <facebookID>metro-blooms</facebookID>
  <twitterHandle>metroblooms</twitterHandle>
  <linkedInID>metro-blooms</linkedInID>
  <pinterestID>metroblooms</pinterestID>
  <non-ContentAliases>SectionsFolder</non-ContentAliases>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'360250f6-aefc-479c-bb42-10ac287407a4', CAST(0x0000A30C001A3722 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-13T01:35:26" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
  <facebook>metro-mlooms</facebook>
  <twitter>metroblooms</twitter>
  <linkedIn>metro-blooms</linkedIn>
  <pinterest>metroblooms</pinterest>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'0e829276-7c29-41d7-b47f-119146978c0e', CAST(0x0000A30C000C4906 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-13T00:44:43" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'a1ca6215-9e87-4dac-b991-1c2f41d14ba1', CAST(0x0000A30B00D7BB78 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T13:05:26" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', CAST(0x0000A30B0146DDDC AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T19:50:04" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'5b937dfd-f00a-43f3-9346-475270afa100', CAST(0x0000A30C001B8C29 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-13T01:40:17" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
  <facebookID>metro-blooms</facebookID>
  <twitterHandle>metroblooms</twitterHandle>
  <linkedInID>metro-blooms</linkedInID>
  <pinterestID>metroblooms</pinterestID>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', CAST(0x0000A30B0146EB22 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T19:50:15" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'7a2920ac-19c3-4644-bf65-6a39eaba622a', CAST(0x0000A30B01410C35 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T19:28:53" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey></googleAnalyticsKey>
  <googleAnalyticsDomain></googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'e401c327-7266-403a-9863-78fc3c191b7a', CAST(0x0000A30C000C52B7 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-13T00:44:51" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', CAST(0x0000A30B0142B2CA AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T19:34:53" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey></googleAnalyticsKey>
  <googleAnalyticsDomain></googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', CAST(0x0000A30C001B8803 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-13T01:40:14" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
  <facebookID>metro-blooms</facebookID>
  <twitterHandle>metroblooms</twitterHandle>
  <linkedInID>metro-blooms</linkedInID>
  <pinterestID>metroblooms</pinterestID>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', CAST(0x0000A30B01412207 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T19:29:11" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey></googleAnalyticsKey>
  <googleAnalyticsDomain></googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', CAST(0x0000A30B014E8D4C AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T20:18:03" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/ap</rootApiUrl>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'f6756a99-90af-437f-abbb-d190bb512260', CAST(0x0000A30B01416AE7 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T19:30:14" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey></googleAnalyticsKey>
  <googleAnalyticsDomain></googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'c36ac041-bdbe-4246-ae9d-e3cc3142c7c9', CAST(0x0000A30B00D7B156 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T13:05:18" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache></umbracoImageCache>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', CAST(0x0000A30B014F7121 AS DateTime), N'<SiteSettings id="1060" parentID="-1" level="1" creatorID="1" sortOrder="1" createDate="2014-04-12T13:05:16" updateDate="2014-04-12T20:21:17" nodeName="Settings" urlName="settings" path="-1,1060" isDoc="" nodeType="1059" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="SiteSettings">
  <umbracoImageCache>3600</umbracoImageCache>
  <googleAnalyticsKey>UA-7194683-2</googleAnalyticsKey>
  <googleAnalyticsDomain>fullstopnet.azurewebsites.net</googleAnalyticsDomain>
  <apiUserName>nerdery</apiUserName>
  <apiPassword>Cha11enge!</apiPassword>
  <siteTitle>Metro Blooms</siteTitle>
  <rootApiUrl>http://metroblooms-api.azurewebsites.net/api</rootApiUrl>
</SiteSettings>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1065, N'6b5ff58e-e2a0-41c0-8484-61ff307364d7', CAST(0x0000A30B01091C9E AS DateTime), N'<Generic id="1065" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:00:30" updateDate="2014-04-12T16:05:13" nodeName="About Us" urlName="about-us" path="-1,1054,1065" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1065, N'3df2d94b-4c08-416f-a0b4-62b33dd599ab', CAST(0x0000A30B01646C98 AS DateTime), N'<Generic id="1065" parentID="1054" level="2" creatorID="1" sortOrder="1" createDate="2014-04-12T16:00:30" updateDate="2014-04-12T21:37:39" nodeName="About Us" urlName="about-us" path="-1,1054,1065" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1065, N'946a59bf-7878-41f2-a1c6-79aed4ee41cd', CAST(0x0000A30C00238721 AS DateTime), N'<Generic id="1065" parentID="1054" level="2" creatorID="1" sortOrder="0" createDate="2014-04-12T16:00:30" updateDate="2014-04-13T02:09:20" nodeName="About Us" urlName="about-us" path="-1,1054,1065" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1065, N'503fcc0a-0199-44cd-b667-b3933b17ddab', CAST(0x0000A30B0107D319 AS DateTime), N'<GenericContent id="1065" parentID="1054" level="2" creatorID="1" sortOrder="0" createDate="2014-04-12T16:00:30" updateDate="2014-04-12T16:00:32" nodeName="About Us" urlName="about-us" path="-1,1054,1065" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="GenericContent">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
</GenericContent>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1065, N'd79b08ea-12dd-4feb-a710-d2ca89d94ae1', CAST(0x0000A30B01088417 AS DateTime), N'<Generic id="1065" parentID="1054" level="2" creatorID="1" sortOrder="0" createDate="2014-04-12T16:00:30" updateDate="2014-04-12T16:03:03" nodeName="About Us" urlName="about-us" path="-1,1054,1065" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1066, N'e073e86a-f624-4f5a-9bd3-23fe5841e5b4', CAST(0x0000A30C00238739 AS DateTime), N'<Generic id="1066" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:02:40" updateDate="2014-04-13T02:09:21" nodeName="Get Started" urlName="get-started" path="-1,1054,1066" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Getting started content</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1066, N'2d93c073-1aba-4021-84ff-3039080dacbe', CAST(0x0000A30B01646DE6 AS DateTime), N'<Generic id="1066" parentID="1054" level="2" creatorID="1" sortOrder="5" createDate="2014-04-12T16:02:40" updateDate="2014-04-12T21:37:41" nodeName="Get Involved" urlName="get-involved" path="-1,1054,1066" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Getting started content</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1066, N'b38df474-6d5f-40bf-a57f-6882145682bc', CAST(0x0000A30B010869FA AS DateTime), N'<Generic id="1066" parentID="1054" level="2" creatorID="1" sortOrder="1" createDate="2014-04-12T16:02:40" updateDate="2014-04-12T16:02:41" nodeName="Get Started" urlName="get-started" path="-1,1054,1066" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1066, N'3427b47c-56a1-4d3e-ad0f-69d036331ecf', CAST(0x0000A30C002470B4 AS DateTime), N'<Generic id="1066" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:02:40" updateDate="2014-04-13T02:12:40" nodeName="Get Involved" urlName="get-involved" path="-1,1054,1066" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Getting started content</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1066, N'f89dfaed-c3f8-4bc5-89c5-7023fc744dd9', CAST(0x0000A30C0023B18A AS DateTime), N'<Generic id="1066" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:02:40" updateDate="2014-04-13T02:09:57" nodeName="Get Involved" urlName="get-involved" path="-1,1054,1066" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Getting started content</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1066, N'a2f2833d-6535-429f-8a7a-b4c6027d7134', CAST(0x0000A30B01087AA2 AS DateTime), N'<Generic id="1066" parentID="1054" level="2" creatorID="1" sortOrder="1" createDate="2014-04-12T16:02:40" updateDate="2014-04-12T16:02:55" nodeName="Get Started" urlName="get-started" path="-1,1054,1066" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[<p>Getting started content</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'96e5d485-d19d-4853-a4e0-03e8e78a32be', CAST(0x0000A30B01646D3F AS DateTime), N'<Generic id="1067" parentID="1054" level="2" creatorID="1" sortOrder="3" createDate="2014-04-12T16:03:19" updateDate="2014-04-12T21:37:40" nodeName="Nominate a Garden" urlName="nominate-a-garden" path="-1,1054,1067" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Nominate!</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'fe31c5b0-537d-4bd3-b515-10314997c164', CAST(0x0000A30C0024709D AS DateTime), N'<Generic id="1067" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:03:19" updateDate="2014-04-13T02:12:40" nodeName="Nominate a Garden" urlName="nominate-a-garden" path="-1,1054,1067" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Nominate!</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'd2cbb2dc-387c-49fe-ba8d-47b173c1e173', CAST(0x0000A30C0023BA97 AS DateTime), N'<Generic id="1067" parentID="1054" level="2" creatorID="1" sortOrder="3" createDate="2014-04-12T16:03:19" updateDate="2014-04-13T02:10:05" nodeName="Nominate a Garden" urlName="nominate-a-garden" path="-1,1054,1067" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Nominate!</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'059c1545-97bb-4087-8e05-609472d8cdac', CAST(0x0000A30B01093CF1 AS DateTime), N'<Generic id="1067" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:03:19" updateDate="2014-04-12T16:05:41" nodeName="Nominate" urlName="nominate" path="-1,1054,1067" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[<p>Nominate!</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'b6717821-d8bb-476b-8e68-8883820dacd3', CAST(0x0000A30C00238742 AS DateTime), N'<Generic id="1067" parentID="1054" level="2" creatorID="1" sortOrder="3" createDate="2014-04-12T16:03:19" updateDate="2014-04-13T02:09:21" nodeName="Nominate" urlName="nominate" path="-1,1054,1067" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Nominate!</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'e08b4aa4-21c6-4476-8ca1-9f971d0a3976', CAST(0x0000A30B0108A74F AS DateTime), N'<Generic id="1067" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:03:19" updateDate="2014-04-12T16:03:33" nodeName="Nominate" urlName="nominate" path="-1,1054,1067" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'dac2c40a-fa62-4318-a411-a741cc681f41', CAST(0x0000A30B01089735 AS DateTime), N'<Generic id="1067" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:03:19" updateDate="2014-04-12T16:03:20" nodeName="Nominate a Garden" urlName="nominate-a-garden" path="-1,1054,1067" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'a524a104-d622-4332-8aa6-56a653d4580e', CAST(0x0000A30C00238747 AS DateTime), N'<Generic id="1068" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:03:54" updateDate="2014-04-13T02:09:21" nodeName="Evaluate" urlName="evaluate" path="-1,1054,1068" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Evaluate your garden here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'be59a2c5-e1cb-442d-98e8-6ec004cbf400', CAST(0x0000A30B0108FCBA AS DateTime), N'<Generic id="1068" parentID="1054" level="2" creatorID="1" sortOrder="3" createDate="2014-04-12T16:03:54" updateDate="2014-04-12T16:04:46" nodeName="Evaluate" urlName="evaluate" path="-1,1054,1068" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[<p>Evaluate your garden here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'33a63839-f3bd-46c2-84f7-c7c5883c1689', CAST(0x0000A30C0023C62E AS DateTime), N'<Generic id="1068" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:03:54" updateDate="2014-04-13T02:10:14" nodeName="Evaluate Your Garden" urlName="evaluate-your-garden" path="-1,1054,1068" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Evaluate your garden here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'3a8bbf65-56d4-4962-b90c-cd75d0f58784', CAST(0x0000A30C002470A6 AS DateTime), N'<Generic id="1068" parentID="1054" level="2" creatorID="1" sortOrder="3" createDate="2014-04-12T16:03:54" updateDate="2014-04-13T02:12:40" nodeName="Evaluate Your Garden" urlName="evaluate-your-garden" path="-1,1054,1068" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Evaluate your garden here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'7718150e-6bad-4d43-9d22-e04455940bc5', CAST(0x0000A30B0108C017 AS DateTime), N'<Generic id="1068" parentID="1054" level="2" creatorID="1" sortOrder="3" createDate="2014-04-12T16:03:54" updateDate="2014-04-12T16:03:55" nodeName="Evaluate" urlName="evaluate" path="-1,1054,1068" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'11212ba1-4c67-4676-92da-f05990feb076', CAST(0x0000A30B01646D92 AS DateTime), N'<Generic id="1068" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:03:54" updateDate="2014-04-12T21:37:40" nodeName="Evaluate Your Garden" urlName="evaluate-your-garden" path="-1,1054,1068" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Evaluate your garden here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'be6f3ebf-6c59-47db-b09f-08a5ede16d25', CAST(0x0000A30C0023A705 AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="1" createDate="2014-04-12T16:04:17" updateDate="2014-04-13T02:09:48" nodeName="Learn About Raingardens" urlName="learn-about-raingardens" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Zach Iniguez" writerID="8" template="1074" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Learn content here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'3be7858c-682e-45a4-b09f-1d91086d9775', CAST(0x0000A30B014DD9DD AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="0" createDate="2014-04-12T16:04:17" updateDate="2014-04-12T20:15:30" nodeName="Learn" urlName="learn" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="David Ly" writerID="7" template="1074" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Learn content here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'e27e4828-fc29-4df3-b3fb-48cd131d8869', CAST(0x0000A30B0108EC56 AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:04:17" updateDate="2014-04-12T16:04:32" nodeName="Learn" urlName="learn" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[<p>Learn content here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'2f6d9834-c374-4d57-a684-6d5f0a4e8063', CAST(0x0000A30B01646CEC AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:04:17" updateDate="2014-04-12T21:37:39" nodeName="Learn About Raingardens" urlName="learn-about-raingardens" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1074" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Learn content here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'4a9ce66c-947f-4f1b-846d-a537b7b38a7a', CAST(0x0000A30C0023872B AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="1" createDate="2014-04-12T16:04:17" updateDate="2014-04-13T02:09:20" nodeName="Learn" urlName="learn" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1074" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Learn content here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'dfc7ab9c-e40f-41e0-91d9-a9046d4530de', CAST(0x0000A30B0108E34C AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:04:17" updateDate="2014-04-12T16:04:25" nodeName="Learn" urlName="learn" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'a5fb736b-9fc5-485a-a95b-d2b1317089b7', CAST(0x0000A30C0008C428 AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="2" createDate="2014-04-12T16:04:17" updateDate="2014-04-13T00:31:54" nodeName="Learn About Raingardens" urlName="learn-about-raingardens" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[<p>Learn content here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'771aa397-e20f-4ed0-aef7-e0feca39e982', CAST(0x0000A30B01091C4C AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="0" createDate="2014-04-12T16:04:17" updateDate="2014-04-12T16:05:13" nodeName="Learn" urlName="learn" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[<p>Learn content here</p>]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'9eb8becd-688d-4147-8b45-fef86e003e0e', CAST(0x0000A30B0108DB88 AS DateTime), N'<Generic id="1069" parentID="1054" level="2" creatorID="1" sortOrder="4" createDate="2014-04-12T16:04:17" updateDate="2014-04-12T16:04:18" nodeName="Learn" urlName="learn" path="-1,1054,1069" isDoc="" nodeType="1063" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1076, N'a1505ed9-aa20-4ff3-82f4-11fb6771615d', CAST(0x0000A30C00638ED3 AS DateTime), N'<Generic id="1076" parentID="1065" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T02:11:34" updateDate="2014-04-13T06:02:28" nodeName="Success Stories" urlName="success-stories" path="-1,1054,1065,1076" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1076, N'5c78daf4-0f07-4fe7-b025-562ff8a16f85', CAST(0x0000A30C00395356 AS DateTime), N'<Generic id="1076" parentID="1065" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:11:34" updateDate="2014-04-13T03:28:42" nodeName="Success Stories" urlName="success-stories" path="-1,1054,1065,1076" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1076, N'7f2aa1c9-7eec-4454-aba5-8294e0c98a54', CAST(0x0000A30C0063E524 AS DateTime), N'<Generic id="1076" parentID="1065" level="3" creatorID="8" sortOrder="5" createDate="2014-04-13T02:11:34" updateDate="2014-04-13T06:03:42" nodeName="Success Stories" urlName="success-stories" path="-1,1054,1065,1076" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1076, N'b99a8aeb-004b-48d3-8e87-f4e333f39e78', CAST(0x0000A30C00242412 AS DateTime), N'<Generic id="1076" parentID="1065" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T02:11:34" updateDate="2014-04-13T02:11:35" nodeName="Success Stories" urlName="success-stories" path="-1,1054,1065,1076" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1077, N'038f4991-1984-48e5-afc3-6a967ac79020', CAST(0x0000A30C006307B7 AS DateTime), N'<Generic id="1077" parentID="1065" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:11:41" updateDate="2014-04-13T06:00:33" nodeName="History" urlName="history" path="-1,1054,1065,1077" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Kelly Corrado" writerID="2" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1077, N'76fd6b9e-cc1f-430e-a46b-d3da7d9896be', CAST(0x0000A30C00242B9B AS DateTime), N'<Generic id="1077" parentID="1065" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:11:41" updateDate="2014-04-13T02:11:41" nodeName="News" urlName="news" path="-1,1054,1065,1077" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1077, N'744e12af-67df-483b-b0a7-d8a3b13f6fc9', CAST(0x0000A30C0039535F AS DateTime), N'<Generic id="1077" parentID="1065" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:11:41" updateDate="2014-04-13T03:28:42" nodeName="News" urlName="news" path="-1,1054,1065,1077" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1078, N'dd8f92e2-b586-4aad-b4ac-492a333ebe0d', CAST(0x0000A30C0063169E AS DateTime), N'<Generic id="1078" parentID="1065" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T02:11:46" updateDate="2014-04-13T06:00:46" nodeName="Board of Directors" urlName="board-of-directors" path="-1,1054,1065,1078" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Kelly Corrado" writerID="2" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1078, N'7b6752a2-22f9-4350-82c0-6febcd1a55f5', CAST(0x0000A30C00638ECE AS DateTime), N'<Generic id="1078" parentID="1065" level="3" creatorID="8" sortOrder="4" createDate="2014-04-13T02:11:46" updateDate="2014-04-13T06:02:28" nodeName="Board of Directors" urlName="board-of-directors" path="-1,1054,1065,1078" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1078, N'828586e1-f01d-434b-9e1f-8875291aedee', CAST(0x0000A30C00395364 AS DateTime), N'<Generic id="1078" parentID="1065" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T02:11:46" updateDate="2014-04-13T03:28:42" nodeName="Reports" urlName="reports" path="-1,1054,1065,1078" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1078, N'205c6d9e-9262-47b6-b818-a3e7be626713', CAST(0x0000A30C00243181 AS DateTime), N'<Generic id="1078" parentID="1065" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:11:46" updateDate="2014-04-13T02:11:46" nodeName="Reports" urlName="reports" path="-1,1054,1065,1078" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'18930665-5e2e-469e-9420-1d71c1ab45e5', CAST(0x0000A30C0039536D AS DateTime), N'<Generic id="1080" parentID="1065" level="3" creatorID="8" sortOrder="4" createDate="2014-04-13T02:11:51" updateDate="2014-04-13T03:28:42" nodeName="GIS Map" urlName="gis-map" path="-1,1054,1065,1080" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'eedb72da-0ea4-4d8d-9c69-39cf4562648e', CAST(0x0000A30C00638EE6 AS DateTime), N'<Generic id="1080" parentID="1065" level="3" creatorID="8" sortOrder="5" createDate="2014-04-13T02:11:51" updateDate="2014-04-13T06:02:28" nodeName="GIS Map" urlName="gis-map" path="-1,1054,1065,1080" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'cc057683-168c-4218-98bd-aadb22bf6a09', CAST(0x0000A30C0063E532 AS DateTime), N'<Generic id="1080" parentID="1065" level="3" creatorID="8" sortOrder="7" createDate="2014-04-13T02:11:51" updateDate="2014-04-13T06:03:42" nodeName="GIS Map" urlName="gis-map" path="-1,1054,1065,1080" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'4f688e42-ef58-494c-b969-ed02ef763ac3', CAST(0x0000A30C0024378B AS DateTime), N'<Generic id="1080" parentID="1065" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T02:11:51" updateDate="2014-04-13T02:11:51" nodeName="GIS Map" urlName="gis-map" path="-1,1054,1065,1080" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1081, N'bb2f40f4-82e2-45de-87a7-73a896595b1e', CAST(0x0000A30C00243F77 AS DateTime), N'<Generic id="1081" parentID="1069" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T02:11:58" updateDate="2014-04-13T02:11:58" nodeName="Water Pollution" urlName="water-pollution" path="-1,1054,1069,1081" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1081, N'a32e6396-76d2-4c6d-9881-ccb0f232e642', CAST(0x0000A30C00396693 AS DateTime), N'<Generic id="1081" parentID="1069" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:11:58" updateDate="2014-04-13T03:28:59" nodeName="Water Pollution" urlName="water-pollution" path="-1,1054,1069,1081" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'24737ac7-033c-4e8b-910d-13a143023498', CAST(0x0000A30C0039669D AS DateTime), N'<Generic id="1082" parentID="1069" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:12:07" updateDate="2014-04-13T03:28:59" nodeName="Build a Raingarden" urlName="build-a-raingarden" path="-1,1054,1069,1082" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'75866210-b028-4c52-b71e-63a1a76c2766', CAST(0x0000A30C00244A91 AS DateTime), N'<Generic id="1082" parentID="1069" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:12:07" updateDate="2014-04-13T02:12:07" nodeName="Build a Raingarden" urlName="build-a-raingarden" path="-1,1054,1069,1082" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1084, N'8f240c1d-2e9f-4432-9a2d-96375a1ad85d', CAST(0x0000A30C00247CCB AS DateTime), N'<Generic id="1084" parentID="1067" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T02:12:50" updateDate="2014-04-13T02:12:50" nodeName="Submit a Garden" urlName="submit-a-garden" path="-1,1054,1067,1084" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1085, N'9fa7ba2e-2e8b-4352-8e39-e507aa37b69d', CAST(0x0000A30C00248879 AS DateTime), N'<Generic id="1085" parentID="1067" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:13:00" updateDate="2014-04-13T02:13:00" nodeName="Neighborhood Gardens" urlName="neighborhood-gardens" path="-1,1054,1067,1085" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1086, N'99410205-1bb5-4831-9e10-80fdfc419db9', CAST(0x0000A30C0039B98E AS DateTime), N'<Generic id="1086" parentID="1068" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:13:05" updateDate="2014-04-13T03:30:10" nodeName="Helpful Tips" urlName="helpful-tips" path="-1,1054,1068,1086" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1086, N'4d3b708f-7bf1-4f97-b9bd-cb09efc00b01', CAST(0x0000A30C00248EDE AS DateTime), N'<Generic id="1086" parentID="1068" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T02:13:05" updateDate="2014-04-13T02:13:06" nodeName="Helpful Tips" urlName="helpful-tips" path="-1,1054,1068,1086" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1087, N'586f94b5-70b1-4366-8666-0a876300e8df', CAST(0x0000A30C0039B993 AS DateTime), N'<Generic id="1087" parentID="1068" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:13:11" updateDate="2014-04-13T03:30:10" nodeName="Metrics" urlName="metrics" path="-1,1054,1068,1087" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1087, N'6d463da2-4476-4818-b641-153162fc7936', CAST(0x0000A30C0024954F AS DateTime), N'<Generic id="1087" parentID="1068" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:13:11" updateDate="2014-04-13T02:13:11" nodeName="Metrics" urlName="metrics" path="-1,1054,1068,1087" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1088, N'06dddcce-e02c-45e8-a991-7d645d651717', CAST(0x0000A30C0039B99D AS DateTime), N'<Generic id="1088" parentID="1068" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T02:13:15" updateDate="2014-04-13T03:30:10" nodeName="Awards" urlName="awards" path="-1,1054,1068,1088" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1088, N'60589e4c-1517-4206-9f74-f11ef8aa861a', CAST(0x0000A30C002499B8 AS DateTime), N'<Generic id="1088" parentID="1068" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T02:13:15" updateDate="2014-04-13T02:13:15" nodeName="Awards" urlName="awards" path="-1,1054,1068,1088" isDoc="" nodeType="1063" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1091, N'8b20e26f-ae81-4b3a-93d6-3c690ba22c5d', CAST(0x0000A30C0025E2E2 AS DateTime), N'<External id="1091" parentID="1067" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:17:20" updateDate="2014-04-13T02:17:56" nodeName="Submit a Garden" urlName="submit-a-garden" path="-1,1054,1067,1091" isDoc="" nodeType="1089" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="External">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <redirectUrl><![CDATA[{"Title":"Submit a Garden","Mode":1,"NodeId":null,"Url":"https://www.metroblooms.org/nominate.php","NewWindow":false}]]></redirectUrl>
</External>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1091, N'ae61d94d-e7db-4a81-976e-8b6da2b46ff5', CAST(0x0000A30C0025B974 AS DateTime), N'<External id="1091" parentID="1067" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:17:20" updateDate="2014-04-13T02:17:20" nodeName="Submit a Garden" urlName="submit-a-garden" path="-1,1054,1067,1091" isDoc="" nodeType="1089" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="External">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <redirectUrl><![CDATA[]]></redirectUrl>
</External>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1091, N'14d1982d-c684-4e7e-abf6-ba01cb9e267e', CAST(0x0000A30C0025DC66 AS DateTime), N'<External id="1091" parentID="1067" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T02:17:20" updateDate="2014-04-13T02:17:50" nodeName="Submit a Garden" urlName="submit-a-garden" path="-1,1054,1067,1091" isDoc="" nodeType="1089" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="External">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <redirectUrl><![CDATA[{"Title":"Nominate a Garden","Mode":1,"NodeId":null,"Url":"https://www.metroblooms.org/nominate.php","NewWindow":false}]]></redirectUrl>
</External>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1091, N'ba292480-d5ab-4f7f-b410-beacdee797db', CAST(0x0000A30C0025FBEC AS DateTime), N'<External id="1091" parentID="1067" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T02:17:20" updateDate="2014-04-13T02:18:17" nodeName="Submit a Garden" urlName="submit-a-garden" path="-1,1054,1067,1091" isDoc="" nodeType="1089" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="0" nodeTypeAlias="External">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <redirectUrl><![CDATA[{"Title":"Submit a Garden","Mode":1,"NodeId":null,"Url":"https://www.metroblooms.org/nominate.php","NewWindow":false}]]></redirectUrl>
</External>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1093, N'078a0ada-c219-42e1-9646-10e0537b1510', CAST(0x0000A30B01644C0D AS DateTime), N'<SectionsFolder id="1093" parentID="1054" level="2" creatorID="1" sortOrder="5" createDate="2014-04-12T21:37:13" updateDate="2014-04-12T21:37:13" nodeName="_Sections" urlName="_sections" path="-1,1054,1093" isDoc="" nodeType="1092" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1093, N'5cde28c8-15e2-4fdc-b613-2bc907244995', CAST(0x0000A30B01646C23 AS DateTime), N'<SectionsFolder id="1093" parentID="1054" level="2" creatorID="1" sortOrder="0" createDate="2014-04-12T21:37:13" updateDate="2014-04-12T21:37:38" nodeName="_Sections" urlName="_sections" path="-1,1054,1093" isDoc="" nodeType="1092" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1093, N'659c629d-91bd-4528-9246-a6a0408b928a', CAST(0x0000A30B01645DF3 AS DateTime), N'<SectionsFolder id="1093" parentID="1054" level="2" creatorID="1" sortOrder="5" createDate="2014-04-12T21:37:13" updateDate="2014-04-12T21:37:29" nodeName="_Sections" urlName="_sections" path="-1,1054,1093" isDoc="" nodeType="1092" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'a91a9142-74fd-4a96-afdb-0015ca09ed69', CAST(0x0000A30B01653EBD AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1093" level="3" creatorID="1" sortOrder="0" createDate="2014-04-12T21:38:07" updateDate="2014-04-12T21:40:40" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p><strong>Test</strong></p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'f46771dc-fdb6-4f11-b142-0fb5f3f96dc9', CAST(0x0000A30C0008969B AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1097" level="4" creatorID="1" sortOrder="1" createDate="2014-04-12T21:38:07" updateDate="2014-04-13T00:31:15" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1065,1097,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p>Test</p>
<p>another</p>
<p>test</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'71374bec-8b38-4f28-8735-40b3eb45f99f', CAST(0x0000A30B01648BA7 AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1093" level="3" creatorID="1" sortOrder="0" createDate="2014-04-12T21:38:07" updateDate="2014-04-12T21:38:07" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader></subheader>
  <text><![CDATA[]]></text>
  <image></image>
  <imageLocation><![CDATA[]]></imageLocation>
  <imageSize><![CDATA[]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'07207e71-03d0-40a4-aa79-67eeedbb53fe', CAST(0x0000A30B017EDE17 AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1093" level="3" creatorID="1" sortOrder="0" createDate="2014-04-12T21:38:07" updateDate="2014-04-12T23:13:57" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[
    <p>Test New content!</p>
]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'9cc864d8-00b5-49d5-90f7-6d748e58ce00', CAST(0x0000A30B017C573D AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1093" level="3" creatorID="1" sortOrder="0" createDate="2014-04-12T21:38:07" updateDate="2014-04-12T23:04:46" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p>Test</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'9db668a5-6ab4-438f-a811-88183abf9507', CAST(0x0000A30C00596489 AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1097" level="4" creatorID="1" sortOrder="1" createDate="2014-04-12T21:38:07" updateDate="2014-04-13T05:25:27" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1065,1097,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[
        <p>Test</p><p>another</p><p>test</p>
    ]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'1e5ad465-3f68-44e1-883a-9b1dead92ced', CAST(0x0000A30B0164ABC6 AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1093" level="3" creatorID="1" sortOrder="0" createDate="2014-04-12T21:38:07" updateDate="2014-04-12T21:38:35" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p><strong>Test</strong></p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'bd541b2a-67ce-488a-9792-9eee7ddb83e0', CAST(0x0000A30C000075F3 AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1093" level="3" creatorID="1" sortOrder="0" createDate="2014-04-12T21:38:07" updateDate="2014-04-13T00:01:39" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[
        <p>Test</p><p>another</p><p>test</p>
    ]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'f193d91a-c41d-47c3-8289-a4d70f35b5f0', CAST(0x0000A30B0164B618 AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1093" level="3" creatorID="1" sortOrder="0" createDate="2014-04-12T21:38:07" updateDate="2014-04-12T21:38:44" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p><strong>Test</strong></p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'8e2b3270-4cde-4aae-b784-dd363af82c97', CAST(0x0000A30C000840DC AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1097" level="4" creatorID="1" sortOrder="1" createDate="2014-04-12T21:38:07" updateDate="2014-04-13T00:30:02" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1065,1097,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p>Test</p>
<p>another</p>
<p>test</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'd23b5633-a300-40ba-b0a1-eb1ce0eccdc3', CAST(0x0000A30B01897D4E AS DateTime), N'<Section-ContentWithImage id="1094" parentID="1093" level="3" creatorID="1" sortOrder="0" createDate="2014-04-12T21:38:07" updateDate="2014-04-12T23:52:38" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1094" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[
        
    <p>Test New content!</p><p>Adding more lines!</p><p>Okay!</p>

    ]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1097, N'3c95b146-e097-4d26-b195-53e7ca68b64c', CAST(0x0000A30C00394C49 AS DateTime), N'<SectionsFolder id="1097" parentID="1065" level="3" creatorID="8" sortOrder="4" createDate="2014-04-13T03:28:36" updateDate="2014-04-13T03:28:36" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1097" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1097, N'27e0ffcf-262b-4b2c-b0df-e6ff965d08f8', CAST(0x0000A30C00395351 AS DateTime), N'<SectionsFolder id="1097" parentID="1065" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T03:28:36" updateDate="2014-04-13T03:28:42" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1097" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1098, N'12c5aec2-ba60-456c-b9a2-048d38471f98', CAST(0x0000A30C0039668A AS DateTime), N'<SectionsFolder id="1098" parentID="1069" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T03:28:53" updateDate="2014-04-13T03:28:59" nodeName="_Sections" urlName="_sections" path="-1,1054,1069,1098" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1098, N'cfdb4385-c4ec-44a0-8cc7-8e460c73517d', CAST(0x0000A30C00395FFF AS DateTime), N'<SectionsFolder id="1098" parentID="1069" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T03:28:53" updateDate="2014-04-13T03:28:53" nodeName="_Sections" urlName="_sections" path="-1,1054,1069,1098" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1099, N'93575fc2-9009-4d17-a105-cdc9d1f5ead1', CAST(0x0000A30C00397487 AS DateTime), N'<SectionsFolder id="1099" parentID="1076" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:11" updateDate="2014-04-13T03:29:11" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1076,1099" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1100, N'909b3d7a-fbc1-479b-b70f-c18e4922b9a2', CAST(0x0000A30C00397E83 AS DateTime), N'<SectionsFolder id="1100" parentID="1077" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:19" updateDate="2014-04-13T03:29:19" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1077,1100" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1101, N'933e2aae-e14c-4606-86d1-e519fd418b54', CAST(0x0000A30C00398351 AS DateTime), N'<SectionsFolder id="1101" parentID="1078" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:23" updateDate="2014-04-13T03:29:23" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1078,1101" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1102, N'38da9f1d-d19c-4808-8134-683bccfbdb26', CAST(0x0000A30C003989C1 AS DateTime), N'<SectionsFolder id="1102" parentID="1080" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:29" updateDate="2014-04-13T03:29:29" nodeName="_Sections" urlName="_sections" path="-1,1054,1065,1080,1102" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1103, N'0f73ba4d-dc8a-47bd-982b-02a4ce4ba252', CAST(0x0000A30C00398EF0 AS DateTime), N'<SectionsFolder id="1103" parentID="1081" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:33" updateDate="2014-04-13T03:29:33" nodeName="_Sections" urlName="_sections" path="-1,1054,1069,1081,1103" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1104, N'a4e076af-12c3-4a31-9e15-bee544987936', CAST(0x0000A30C00399523 AS DateTime), N'<SectionsFolder id="1104" parentID="1082" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:38" updateDate="2014-04-13T03:29:39" nodeName="_Sections" urlName="_sections" path="-1,1054,1069,1082,1104" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1105, N'bf2afd83-9f67-4402-a1c6-e4df20687a46', CAST(0x0000A30C00399C5A AS DateTime), N'<SectionsFolder id="1105" parentID="1085" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:45" updateDate="2014-04-13T03:29:45" nodeName="_Sections" urlName="_sections" path="-1,1054,1067,1085,1105" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1106, N'2f385530-cf30-4615-8bdc-780bbd4cbf28', CAST(0x0000A30C0039A214 AS DateTime), N'<SectionsFolder id="1106" parentID="1086" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:49" updateDate="2014-04-13T03:29:50" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1086,1106" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1107, N'a4d02287-e437-4a47-b96f-506fc5f1635b', CAST(0x0000A30C0039A6F5 AS DateTime), N'<SectionsFolder id="1107" parentID="1068" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T03:29:54" updateDate="2014-04-13T03:29:54" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1107" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1107, N'67506182-f161-4c5b-a2af-52ce14683f72', CAST(0x0000A30C0039B985 AS DateTime), N'<SectionsFolder id="1107" parentID="1068" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T03:29:54" updateDate="2014-04-13T03:30:10" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1107" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Admin" writerID="0" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1108, N'5e0d97d6-d0bc-4016-8c92-af6c789b51ca', CAST(0x0000A30C0039AE62 AS DateTime), N'<SectionsFolder id="1108" parentID="1087" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:30:00" updateDate="2014-04-13T03:30:00" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1087,1108" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1109, N'24a6591c-96a6-4261-932e-0d00bd1717a1', CAST(0x0000A30C0039B493 AS DateTime), N'<SectionsFolder id="1109" parentID="1088" level="4" creatorID="8" sortOrder="0" createDate="2014-04-13T03:30:05" updateDate="2014-04-13T03:30:05" nodeName="_Sections" urlName="_sections" path="-1,1054,1068,1088,1109" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1110, N'8d8b94dc-ddd9-4181-9ced-2ec1afee75ee', CAST(0x0000A30C0039C1F2 AS DateTime), N'<SectionsFolder id="1110" parentID="1066" level="3" creatorID="8" sortOrder="0" createDate="2014-04-13T03:30:17" updateDate="2014-04-13T03:30:17" nodeName="_Sections" urlName="_sections" path="-1,1054,1066,1110" isDoc="" nodeType="1092" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1115, N'73ed39d3-f093-454b-b60e-518a77d53e64', CAST(0x0000A30B018A4D71 AS DateTime), N'<Section-Intro id="1115" parentID="1093" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T04:16:47" updateDate="2014-04-12T23:55:35" nodeName="Intro" urlName="intro" path="-1,1054,1093,1115" isDoc="" nodeType="1111" creatorName="Zach Iniguez" writerName="David Ly" writerID="7" template="0" nodeTypeAlias="Section-Intro">
  <title>Title</title>
  <cta1><![CDATA[{"Title":"CTA1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta1>
  <cta2><![CDATA[{"Title":"CTA2","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta2>
  <alignment><![CDATA[Center]]></alignment>
</Section-Intro>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1115, N'8c9a8b62-8f75-4a57-b139-5b0e40708cf5', CAST(0x0000A30C0046A71E AS DateTime), N'<Section-Intro id="1115" parentID="1093" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T04:16:47" updateDate="2014-04-13T04:17:14" nodeName="Intro" urlName="intro" path="-1,1054,1093,1115" isDoc="" nodeType="1111" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-Intro">
  <title>Title</title>
  <cta1><![CDATA[{"Title":"CTA1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta1>
  <cta2><![CDATA[{"Title":"CTA2","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta2>
  <alignment><![CDATA[Center]]></alignment>
</Section-Intro>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1115, N'7b0b11e6-04a6-4ab2-97ea-c8ba58d75de6', CAST(0x0000A30C00468801 AS DateTime), N'<Section-Intro id="1115" parentID="1093" level="3" creatorID="8" sortOrder="1" createDate="2014-04-13T04:16:47" updateDate="2014-04-13T04:16:47" nodeName="Intro" urlName="intro" path="-1,1054,1093,1115" isDoc="" nodeType="1111" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-Intro">
  <title></title>
  <cta1><![CDATA[]]></cta1>
  <cta2><![CDATA[]]></cta2>
  <alignment><![CDATA[]]></alignment>
</Section-Intro>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1116, N'a352df75-b91f-4c04-84e2-197309c6fa3c', CAST(0x0000A30C004B33A9 AS DateTime), N'<Section-ImageDisplay id="1116" parentID="1093" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T04:33:16" updateDate="2014-04-13T04:33:47" nodeName="Image Display" urlName="image-display" path="-1,1054,1093,1116" isDoc="" nodeType="1096" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1>1071</image1>
  <image2>1071</image2>
  <image3>1071</image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1116, N'36dcc88a-304a-4ba1-a9ad-19a4dd2380ef', CAST(0x0000A30C004B7856 AS DateTime), N'<Section-ImageDisplay id="1116" parentID="1093" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T04:33:16" updateDate="2014-04-13T04:34:46" nodeName="Image Display" urlName="image-display" path="-1,1054,1093,1116" isDoc="" nodeType="1096" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1>1071</image1>
  <image2>1071</image2>
  <image3>1071</image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1116, N'b9d11cbe-88a6-40c6-88cc-faa818c08b7d', CAST(0x0000A30C004B0EA8 AS DateTime), N'<Section-ImageDisplay id="1116" parentID="1093" level="3" creatorID="8" sortOrder="2" createDate="2014-04-13T04:33:16" updateDate="2014-04-13T04:33:16" nodeName="Image Display" urlName="image-display" path="-1,1054,1093,1116" isDoc="" nodeType="1096" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1></image1>
  <image2></image2>
  <image3></image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1117, N'3f925ef2-ea2e-4be9-bb90-15126483dd90', CAST(0x0000A30C004B669C AS DateTime), N'<Section-CallToAction id="1117" parentID="1093" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T04:33:24" updateDate="2014-04-13T04:34:31" nodeName="Call to Action" urlName="call-to-action" path="-1,1054,1093,1117" isDoc="" nodeType="1112" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-CallToAction">
  <title>Home Page Section Title</title>
  <cta1><![CDATA[{"Title":"CTA Link 1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta1>
  <cta2><![CDATA[{"Title":"CTA Link 2","Mode":1,"NodeId":null,"Url":"http://www.google.com","NewWindow":false}]]></cta2>
  <text><![CDATA[<p>Lorem ipsum.</p>]]></text>
  <alignment><![CDATA[Center]]></alignment>
</Section-CallToAction>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1117, N'7c6462c1-86e7-4615-8668-72a3f04d2081', CAST(0x0000A30C004B1863 AS DateTime), N'<Section-CallToAction id="1117" parentID="1093" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T04:33:24" updateDate="2014-04-13T04:33:24" nodeName="Call to Action" urlName="call-to-action" path="-1,1054,1093,1117" isDoc="" nodeType="1112" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-CallToAction">
  <title></title>
  <cta1><![CDATA[]]></cta1>
  <cta2><![CDATA[]]></cta2>
  <text><![CDATA[]]></text>
  <alignment><![CDATA[]]></alignment>
</Section-CallToAction>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1117, N'16b78d42-cb65-4a53-808c-bc53968f303b', CAST(0x0000A30C004B99A5 AS DateTime), N'<Section-CallToAction id="1117" parentID="1093" level="3" creatorID="8" sortOrder="3" createDate="2014-04-13T04:33:24" updateDate="2014-04-13T04:35:15" nodeName="Call to Action" urlName="call-to-action" path="-1,1054,1093,1117" isDoc="" nodeType="1112" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-CallToAction">
  <title>Home Page Section Title</title>
  <cta1><![CDATA[{"Title":"CTA Link 1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}]]></cta1>
  <cta2><![CDATA[{"Title":"CTA Link 2","Mode":1,"NodeId":null,"Url":"http://www.google.com","NewWindow":false}]]></cta2>
  <text><![CDATA[<p>Lorem ipsum.</p>]]></text>
  <alignment><![CDATA[Center]]></alignment>
</Section-CallToAction>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1118, N'84fa2d33-0a8f-433a-9c25-2f20a30adb4e', CAST(0x0000A30C004BB43F AS DateTime), N'<Section-Quote id="1118" parentID="1093" level="3" creatorID="8" sortOrder="4" createDate="2014-04-13T04:33:32" updateDate="2014-04-13T04:35:37" nodeName="Quote" urlName="quote" path="-1,1054,1093,1118" isDoc="" nodeType="1095" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-Quote">
  <heading>Pull Quote Header</heading>
  <quote><![CDATA[Lorem ipsum.]]></quote>
  <citation>Ghandi</citation>
</Section-Quote>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1118, N'adabe667-c1ac-4267-b8e9-831c6d6901c3', CAST(0x0000A30C004B21E5 AS DateTime), N'<Section-Quote id="1118" parentID="1093" level="3" creatorID="8" sortOrder="4" createDate="2014-04-13T04:33:32" updateDate="2014-04-13T04:33:32" nodeName="Quote" urlName="quote" path="-1,1054,1093,1118" isDoc="" nodeType="1095" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-Quote">
  <heading></heading>
  <quote><![CDATA[]]></quote>
  <citation></citation>
</Section-Quote>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1118, N'45583017-fc24-42fb-a79e-cf4925af25b3', CAST(0x0000A30C004B9320 AS DateTime), N'<Section-Quote id="1118" parentID="1093" level="3" creatorID="8" sortOrder="4" createDate="2014-04-13T04:33:32" updateDate="2014-04-13T04:35:09" nodeName="Quote" urlName="quote" path="-1,1054,1093,1118" isDoc="" nodeType="1095" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-Quote">
  <heading>Pull Quote Header</heading>
  <quote><![CDATA[Lorem ipsum.]]></quote>
  <citation>Ghandi</citation>
</Section-Quote>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1119, N'8a51613a-1e0f-4a09-8349-7de0ad5610c7', CAST(0x0000A30C00596FF8 AS DateTime), N'<Section-ContentWithImage id="1119" parentID="1093" level="3" creatorID="1" sortOrder="4" createDate="2014-04-13T05:25:37" updateDate="2014-04-13T05:25:37" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1119" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[
        <p>Test</p><p>another</p><p>test</p>
    ]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1119, N'cbff34f9-c7de-4a60-9b0b-d080a7ad22f4', CAST(0x0000A30C0007F5FF AS DateTime), N'<Section-ContentWithImage id="1119" parentID="1093" level="3" creatorID="1" sortOrder="4" createDate="2014-04-13T05:25:37" updateDate="2014-04-13T00:28:58" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1093,1119" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p>Test</p>
<p>another</p>
<p>test</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1121, N'9385456d-b14a-43a0-b7c8-1a53fc5c94f3', CAST(0x0000A30C000A72BF AS DateTime), N'<Section-ContentWithImage id="1121" parentID="1098" level="4" creatorID="1" sortOrder="0" createDate="2014-04-13T00:29:32" updateDate="2014-04-13T00:38:01" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1069,1098,1121" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[
        <p>Test</p>
    ]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1121, N'8619d616-abe7-452f-983a-899e6e479e9b', CAST(0x0000A30C00081EBA AS DateTime), N'<Section-ContentWithImage id="1121" parentID="1098" level="4" creatorID="1" sortOrder="0" createDate="2014-04-13T00:29:32" updateDate="2014-04-13T00:29:33" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1069,1098,1121" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p>Test</p>
<p>another</p>
<p>test</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1121, N'd98ecab4-7923-4b24-b0d6-cf685e084f01', CAST(0x0000A30C000DDFCA AS DateTime), N'<Section-ContentWithImage id="1121" parentID="1098" level="4" creatorID="1" sortOrder="1" createDate="2014-04-13T00:29:32" updateDate="2014-04-13T00:50:29" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1069,1098,1121" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[
        <p>Test</p>
    ]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1121, N'b763de81-6cc4-481e-9c15-de1d0ee54640', CAST(0x0000A30C0008B7A6 AS DateTime), N'<Section-ContentWithImage id="1121" parentID="1098" level="4" creatorID="1" sortOrder="0" createDate="2014-04-13T00:29:32" updateDate="2014-04-13T00:31:43" nodeName="Rain Garden" urlName="rain-garden" path="-1,1054,1069,1098,1121" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>test</subheader>
  <text><![CDATA[<p>Test</p>
<p>another</p>
<p>test</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1122, N'd8d31c0f-fe16-403e-a0c8-117cec23ee42', CAST(0x0000A30C005B0BF6 AS DateTime), N'<Section-RichText id="1122" parentID="1093" level="3" creatorID="8" sortOrder="5" createDate="2014-04-13T05:31:29" updateDate="2014-04-13T05:31:29" nodeName="Rich Text" urlName="rich-text" path="-1,1054,1093,1122" isDoc="" nodeType="1120" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-RichText">
  <heading></heading>
  <text><![CDATA[]]></text>
</Section-RichText>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1122, N'f9adb43e-0e40-405d-bd23-829274b0c9cc', CAST(0x0000A30C005B2ED8 AS DateTime), N'<Section-RichText id="1122" parentID="1093" level="3" creatorID="8" sortOrder="5" createDate="2014-04-13T05:31:29" updateDate="2014-04-13T05:31:59" nodeName="Rich Text" urlName="rich-text" path="-1,1054,1093,1122" isDoc="" nodeType="1120" creatorName="Zach Iniguez" writerName="Zach Iniguez" writerID="8" template="0" nodeTypeAlias="Section-RichText">
  <heading></heading>
  <text><![CDATA[<p>Rich Text - text</p>]]></text>
</Section-RichText>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1123, N'7d00fdf5-e0b4-4573-bd4a-38d6ec845f4d', CAST(0x0000A30C000DDF5F AS DateTime), N'<Section-RichText id="1123" parentID="1098" level="4" creatorID="1" sortOrder="0" createDate="2014-04-13T00:41:27" updateDate="2014-04-13T00:50:29" nodeName="Rich Text Section" urlName="rich-text-section" path="-1,1054,1069,1098,1123" isDoc="" nodeType="1120" creatorName="Wade Kallhoff" writerName="Admin" writerID="0" template="0" nodeTypeAlias="Section-RichText">
  <heading>Rich Text Section</heading>
  <text><![CDATA[<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras volutpat aliquet est, sed sollicitudin purus tincidunt volutpat. Suspendisse in tristique lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin et ultricies sem, at dictum lorem. Integer et felis iaculis, semper libero sed, imperdiet ipsum. Mauris iaculis sodales augue sed viverra. Mauris diam metus, volutpat facilisis malesuada vel, fermentum ac neque.</p>
<p>Morbi volutpat nibh vel magna varius viverra. Fusce ac nisi nisl. Etiam viverra adipiscing ligula, vitae sagittis turpis fringilla accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut diam ligula, ornare sit amet ullamcorper eget, vehicula at risus. Maecenas id enim purus. Morbi elementum, dui non luctus vehicula, augue justo lacinia diam, a hendrerit tellus tortor ac sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus urna sem, vehicula a est id, dignissim tempus mi. Donec justo enim, fringilla et tellus in, porta tristique tellus. Sed nisl odio, molestie sagittis dolor at, porttitor tempus massa. Donec condimentum tellus lacus, eget interdum metus euismod et. Phasellus eu leo sed nisi lacinia fermentum.</p>]]></text>
</Section-RichText>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1123, N'afc3ec37-a91e-4470-836f-98ba89095190', CAST(0x0000A30C000B909A AS DateTime), N'<Section-RichText id="1123" parentID="1098" level="4" creatorID="1" sortOrder="1" createDate="2014-04-13T00:41:27" updateDate="2014-04-13T00:42:00" nodeName="Rich Text Section" urlName="rich-text-section" path="-1,1054,1069,1098,1123" isDoc="" nodeType="1120" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-RichText">
  <heading>Rich Text Section</heading>
  <text><![CDATA[<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras volutpat aliquet est, sed sollicitudin purus tincidunt volutpat. Suspendisse in tristique lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin et ultricies sem, at dictum lorem. Integer et felis iaculis, semper libero sed, imperdiet ipsum. Mauris iaculis sodales augue sed viverra. Mauris diam metus, volutpat facilisis malesuada vel, fermentum ac neque.</p>
<p>Morbi volutpat nibh vel magna varius viverra. Fusce ac nisi nisl. Etiam viverra adipiscing ligula, vitae sagittis turpis fringilla accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut diam ligula, ornare sit amet ullamcorper eget, vehicula at risus. Maecenas id enim purus. Morbi elementum, dui non luctus vehicula, augue justo lacinia diam, a hendrerit tellus tortor ac sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus urna sem, vehicula a est id, dignissim tempus mi. Donec justo enim, fringilla et tellus in, porta tristique tellus. Sed nisl odio, molestie sagittis dolor at, porttitor tempus massa. Donec condimentum tellus lacus, eget interdum metus euismod et. Phasellus eu leo sed nisi lacinia fermentum.</p>]]></text>
</Section-RichText>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1123, N'2733fbde-e2d3-4f3e-94a8-c3a575f68f9f', CAST(0x0000A30C000B6449 AS DateTime), N'<Section-RichText id="1123" parentID="1098" level="4" creatorID="1" sortOrder="1" createDate="2014-04-13T00:41:27" updateDate="2014-04-13T00:41:28" nodeName="Rich Text Section" urlName="rich-text-section" path="-1,1054,1069,1098,1123" isDoc="" nodeType="1120" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-RichText">
  <heading></heading>
  <text><![CDATA[]]></text>
</Section-RichText>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1124, N'023b9399-255d-45b0-a0de-1d634d17129a', CAST(0x0000A30C000E0C16 AS DateTime), N'<Section-ContentWithImage id="1124" parentID="1098" level="4" creatorID="1" sortOrder="2" createDate="2014-04-13T00:51:06" updateDate="2014-04-13T00:51:08" nodeName="Image Right" urlName="image-right" path="-1,1054,1069,1098,1124" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader></subheader>
  <text><![CDATA[]]></text>
  <image></image>
  <imageLocation><![CDATA[]]></imageLocation>
  <imageSize><![CDATA[]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1124, N'6812337f-cc91-4c3e-be5c-3050596083d4', CAST(0x0000A30C000E33B7 AS DateTime), N'<Section-ContentWithImage id="1124" parentID="1098" level="4" creatorID="1" sortOrder="2" createDate="2014-04-13T00:51:06" updateDate="2014-04-13T00:51:41" nodeName="Image Right" urlName="image-right" path="-1,1054,1069,1098,1124" isDoc="" nodeType="1079" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>Image RIght</subheader>
  <text><![CDATA[<p>Nunc ultrices congue metus sed egestas. Aliquam metus mauris, pharetra quis placerat at, euismod a nulla. Nam tortor quam, blandit in mattis sed, pulvinar ac augue. Curabitur tincidunt, ipsum vitae suscipit aliquet, arcu arcu molestie turpis, ac blandit ante urna bibendum purus. Suspendisse justo erat, blandit non nisi a, adipiscing vestibulum lectus. Nunc tempor nisl eget tincidunt ultrices. Donec sit amet libero eget neque aliquam hendrerit. Pellentesque id ligula mollis, condimentum purus et, euismod turpis. Sed eu velit at urna pulvinar posuere. Vivamus vel turpis ante. Praesent non sollicitudin elit, at tempus ligula. Quisque ut felis vitae metus placerat semper. Integer varius auctor neque, ut ultrices purus. In est ante, interdum quis adipiscing nec, tristique eget sem.</p>
<p>Donec nec volutpat odio. Sed congue at</p>]]></text>
  <image>1071</image>
  <imageLocation><![CDATA[Right]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1125, N'4be50b7b-e5d0-4019-a530-25a5a0aa927d', CAST(0x0000A30C000E68A6 AS DateTime), N'<Section-Quote id="1125" parentID="1098" level="4" creatorID="1" sortOrder="3" createDate="2014-04-13T00:52:06" updateDate="2014-04-13T00:52:27" nodeName="Quote" urlName="quote" path="-1,1054,1069,1098,1125" isDoc="" nodeType="1095" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-Quote">
  <heading>Resharper</heading>
  <quote><![CDATA[Use Resharper]]></quote>
  <citation>David Ly</citation>
</Section-Quote>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1125, N'efc803f0-1ebd-47f4-b18c-afd9263f4c6d', CAST(0x0000A30C000E51CC AS DateTime), N'<Section-Quote id="1125" parentID="1098" level="4" creatorID="1" sortOrder="3" createDate="2014-04-13T00:52:06" updateDate="2014-04-13T00:52:07" nodeName="Quote" urlName="quote" path="-1,1054,1069,1098,1125" isDoc="" nodeType="1095" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-Quote">
  <heading></heading>
  <quote><![CDATA[]]></quote>
  <citation></citation>
</Section-Quote>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1126, N'd19cbd4f-46e5-4c4d-8033-aeef2225ec14', CAST(0x0000A30C000EACFA AS DateTime), N'<Section-ImageDisplay id="1126" parentID="1098" level="4" creatorID="1" sortOrder="4" createDate="2014-04-13T00:53:24" updateDate="2014-04-13T00:53:25" nodeName="Full Image" urlName="full-image" path="-1,1054,1069,1098,1126" isDoc="" nodeType="1096" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1></image1>
  <image2></image2>
  <image3></image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1126, N'c6361add-ef1a-4d82-b9b3-e7971c9b5f56', CAST(0x0000A30C000EB59D AS DateTime), N'<Section-ImageDisplay id="1126" parentID="1098" level="4" creatorID="1" sortOrder="4" createDate="2014-04-13T00:53:24" updateDate="2014-04-13T00:53:32" nodeName="Full Image" urlName="full-image" path="-1,1054,1069,1098,1126" isDoc="" nodeType="1096" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1>1071</image1>
  <image2></image2>
  <image3></image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1127, N'13cd5dbc-088f-4ccf-8ed7-4ae0e285d52a', CAST(0x0000A30C000ED66E AS DateTime), N'<Section-ImageDisplay id="1127" parentID="1098" level="4" creatorID="1" sortOrder="5" createDate="2014-04-13T00:53:46" updateDate="2014-04-13T00:54:00" nodeName="Two Column Images" urlName="two-column-images" path="-1,1054,1069,1098,1127" isDoc="" nodeType="1096" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1>1071</image1>
  <image2>1071</image2>
  <image3>1071</image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1127, N'fc0b338d-0e81-4593-a52a-4b8b2ce81536', CAST(0x0000A30C000EE388 AS DateTime), N'<Section-ImageDisplay id="1127" parentID="1098" level="4" creatorID="1" sortOrder="5" createDate="2014-04-13T00:53:46" updateDate="2014-04-13T00:54:11" nodeName="Two Column Images" urlName="two-column-images" path="-1,1054,1069,1098,1127" isDoc="" nodeType="1096" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1>1071</image1>
  <image2>1071</image2>
  <image3></image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1127, N'3b261c21-cd45-4840-845d-de53a90c8b93', CAST(0x0000A30C000EC6F9 AS DateTime), N'<Section-ImageDisplay id="1127" parentID="1098" level="4" creatorID="1" sortOrder="5" createDate="2014-04-13T00:53:46" updateDate="2014-04-13T00:53:47" nodeName="Two Column Images" urlName="two-column-images" path="-1,1054,1069,1098,1127" isDoc="" nodeType="1096" creatorName="Wade Kallhoff" writerName="Wade Kallhoff" writerID="1" template="0" nodeTypeAlias="Section-ImageDisplay">
  <image1></image1>
  <image2></image2>
  <image3></image3>
</Section-ImageDisplay>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1128, N'25ed5290-d2ae-40d6-b1f4-7f407a934656', CAST(0x0000A30C00638EC0 AS DateTime), N'<Generic id="1128" parentID="1065" level="3" creatorID="2" sortOrder="1" createDate="2014-04-13T06:01:26" updateDate="2014-04-13T06:02:28" nodeName="Mission &amp; Goals" urlName="mission-goals" path="-1,1054,1065,1128" isDoc="" nodeType="1063" creatorName="Kelly Corrado" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1128, N'86a84e4e-f6a3-4325-8198-f26d1eb36d05', CAST(0x0000A30C0063469E AS DateTime), N'<Generic id="1128" parentID="1065" level="3" creatorID="2" sortOrder="5" createDate="2014-04-13T06:01:26" updateDate="2014-04-13T06:01:27" nodeName="Mission &amp; Goals" urlName="mission-goals" path="-1,1054,1065,1128" isDoc="" nodeType="1063" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1129, N'4ba1d7c9-82cd-4fbc-80a6-46ee0321773f', CAST(0x0000A30C0063AF71 AS DateTime), N'<Generic id="1129" parentID="1065" level="3" creatorID="2" sortOrder="6" createDate="2014-04-13T06:02:56" updateDate="2014-04-13T06:02:56" nodeName="Who We Are" urlName="who-we-are" path="-1,1054,1065,1129" isDoc="" nodeType="1063" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1129, N'21c994a6-7a0f-4cbc-a336-c1d886f1bb0a', CAST(0x0000A30C0063E516 AS DateTime), N'<Generic id="1129" parentID="1065" level="3" creatorID="2" sortOrder="3" createDate="2014-04-13T06:02:56" updateDate="2014-04-13T06:03:42" nodeName="Who We Are" urlName="who-we-are" path="-1,1054,1065,1129" isDoc="" nodeType="1063" creatorName="Kelly Corrado" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1130, N'fb80be66-045a-46b7-a74a-237f6b15864b', CAST(0x0000A30C0063E51B AS DateTime), N'<Generic id="1130" parentID="1065" level="3" creatorID="2" sortOrder="6" createDate="2014-04-13T06:03:21" updateDate="2014-04-13T06:03:42" nodeName="Fast Facts" urlName="fast-facts" path="-1,1054,1065,1130" isDoc="" nodeType="1063" creatorName="Kelly Corrado" writerName="Admin" writerID="0" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1130, N'87d9548f-ef50-4ed5-8e50-2a17b9832aaa', CAST(0x0000A30C0063CD16 AS DateTime), N'<Generic id="1130" parentID="1065" level="3" creatorID="2" sortOrder="7" createDate="2014-04-13T06:03:21" updateDate="2014-04-13T06:03:21" nodeName="Fast Facts" urlName="fast-facts" path="-1,1054,1065,1130" isDoc="" nodeType="1063" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="1064" nodeTypeAlias="Generic">
  <pageTitle></pageTitle>
  <pageDescription></pageDescription>
  <pageAuthor></pageAuthor>
  <pageKeywords></pageKeywords>
  <content><![CDATA[]]></content>
</Generic>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1131, N'e36f966e-af30-4292-827e-3480929fc715', CAST(0x0000A30C0064A108 AS DateTime), N'<SectionsFolder id="1131" parentID="1128" level="4" creatorID="2" sortOrder="0" createDate="2014-04-13T06:04:21" updateDate="2014-04-13T06:06:22" nodeName="Sections" urlName="sections" path="-1,1054,1065,1128,1131" isDoc="" nodeType="1092" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1131, N'd7858675-4bdc-4af8-ace3-dc523b47f173', CAST(0x0000A30C006412EC AS DateTime), N'<SectionsFolder id="1131" parentID="1128" level="4" creatorID="2" sortOrder="0" createDate="2014-04-13T06:04:21" updateDate="2014-04-13T06:04:21" nodeName="Mission" urlName="mission" path="-1,1054,1065,1128,1131" isDoc="" nodeType="1092" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="0" nodeTypeAlias="SectionsFolder" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1132, N'0f4d91b8-b599-44c5-a6c4-311e6bdebe76', CAST(0x0000A30C00649565 AS DateTime), N'<Section-ContentWithImage id="1132" parentID="1131" level="5" creatorID="2" sortOrder="0" createDate="2014-04-13T06:06:12" updateDate="2014-04-13T06:06:12" nodeName="Mission" urlName="mission" path="-1,1054,1065,1128,1131,1132" isDoc="" nodeType="1079" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader></subheader>
  <text><![CDATA[]]></text>
  <image></image>
  <imageLocation><![CDATA[]]></imageLocation>
  <imageSize><![CDATA[]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1133, N'baf1f86d-007e-42cb-9581-6868f8e58be1', CAST(0x0000A30C00652CEA AS DateTime), N'<Section-RichText id="1133" parentID="1131" level="5" creatorID="2" sortOrder="0" createDate="2014-04-13T06:07:35" updateDate="2014-04-13T06:08:22" nodeName="Mission" urlName="mission" path="-1,1054,1065,1128,1131,1133" isDoc="" nodeType="1120" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="0" nodeTypeAlias="Section-RichText">
  <heading>Metro Bloom Mission</heading>
  <text><![CDATA[<p><span><span>Metro Blooms’ mission is to promote and celebrate gardening, to beautify our communities and help heal and protect our environment.</span></span><span> </span></p>]]></text>
</Section-RichText>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1133, N'dd364868-62d7-449e-ba4d-76df95a08400', CAST(0x0000A30C0064F655 AS DateTime), N'<Section-RichText id="1133" parentID="1131" level="5" creatorID="2" sortOrder="0" createDate="2014-04-13T06:07:35" updateDate="2014-04-13T06:07:35" nodeName="Mission" urlName="mission" path="-1,1054,1065,1128,1131,1133" isDoc="" nodeType="1120" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="0" nodeTypeAlias="Section-RichText">
  <heading></heading>
  <text><![CDATA[]]></text>
</Section-RichText>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1134, N'7f37e3c8-aece-478e-8f48-9330f5ce22ae', CAST(0x0000A30C0065050E AS DateTime), N'<Section-ContentWithImage id="1134" parentID="1131" level="5" creatorID="2" sortOrder="1" createDate="2014-04-13T06:07:47" updateDate="2014-04-13T06:07:48" nodeName="Goals" urlName="goals" path="-1,1054,1065,1128,1131,1134" isDoc="" nodeType="1079" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader></subheader>
  <text><![CDATA[]]></text>
  <image></image>
  <imageLocation><![CDATA[]]></imageLocation>
  <imageSize><![CDATA[]]></imageSize>
</Section-ContentWithImage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1134, N'05bedb18-0430-40d6-b48a-9f3841329677', CAST(0x0000A30C006591F9 AS DateTime), N'<Section-ContentWithImage id="1134" parentID="1131" level="5" creatorID="2" sortOrder="1" createDate="2014-04-13T06:07:47" updateDate="2014-04-13T06:09:48" nodeName="Goals" urlName="goals" path="-1,1054,1065,1128,1131,1134" isDoc="" nodeType="1079" creatorName="Kelly Corrado" writerName="Kelly Corrado" writerID="2" template="0" nodeTypeAlias="Section-ContentWithImage">
  <subheader>Our Goals</subheader>
  <text><![CDATA[<p><span><span>We are a private nonprofit volunteer-based educational organization which seeks to partner with other organizations, businesses, professional associations, local governments and watershed districts to promote environmentally sound gardening and landscaping practices to improve the health of our land and water resources.</span></span><span> </span></p>]]></text>
  <image></image>
  <imageLocation><![CDATA[Left]]></imageLocation>
  <imageSize><![CDATA[Medium]]></imageSize>
</Section-ContentWithImage>')
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 04/13/2014 01:14:17 ******/
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 04/13/2014 01:14:20 ******/
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[helpText] [nvarchar](1000) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (6, -90, 1032, 3, N'umbracoFile', N'Upload image', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (7, -92, 1032, 3, N'umbracoWidth', N'Width', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (8, -92, 1032, 3, N'umbracoHeight', N'Height', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (9, -92, 1032, 3, N'umbracoBytes', N'Size', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (26, -92, 1033, 4, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (27, -38, 1031, 5, N'contents', N'Contents:', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (28, -51, 1059, 6, N'umbracoImageCache', N'UmbracoImageCache', NULL, 0, 0, N'', N'How long to cache Umbraco media objects (in seconds)')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (30, -88, 1049, 8, N'pageTitle', N'Page Title', NULL, 0, 0, N'', N'Page title to display in browser tab and search engine search')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (31, -88, 1049, 8, N'pageDescription', N'Page Description', NULL, 0, 0, N'', N'Description to display on search engine results')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (32, -88, 1049, 8, N'pageAuthor', N'Page Author', NULL, 0, 0, N'', N'Author of this content')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (33, 1061, 1051, 9, N'navigationLinks', N'Navigation Links', NULL, 1, 0, N'', N'Main navigation links')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (34, -87, 1063, 10, N'content', N'Content', NULL, 0, 0, N'', N'Main content')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (35, -88, 1059, 6, N'googleAnalyticsKey', N'Google Analytics Key', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (36, -88, 1059, 6, N'googleAnalyticsDomain', N'Google Analytics Domain', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (37, -88, 1049, 8, N'pageKeywords', N'Page Keywords', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (41, 1072, 1032, 3, N'cropAnchor', N'Crop Anchor', NULL, 0, 0, N'', N'Select the crop anchor for this image')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (42, -88, 1059, 6, N'apiUserName', N'Api User Name', NULL, 0, 1, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (43, -88, 1059, 6, N'apiPassword', N'Api Password', NULL, 0, 1, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (46, -88, 1059, 6, N'siteTitle', N'Site Title', NULL, 0, 1, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (47, -88, 1059, 6, N'rootApiUrl', N'Root Api Url', NULL, 0, 1, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (48, -88, 1059, 11, N'facebookID', N'Facebook ID', NULL, 0, 0, N'', N'The Facebook page ID (the value after http://www.facebook.com/ of the site''s Facebook page)')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (49, -88, 1059, 11, N'twitterHandle', N'Twitter Handle', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (50, -88, 1059, 11, N'linkedInID', N'LinkedIn ID', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (51, -88, 1059, 11, N'pinterestID', N'Pinterest ID', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (53, 1062, 1089, 12, N'redirectUrl', N'Redirect Url', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (54, -88, 1079, 14, N'subheader', N'Subheader', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (55, -87, 1079, 14, N'text', N'Text', NULL, 4, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (56, 1035, 1079, 14, N'image', N'Image', NULL, 3, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (57, 1083, 1079, 14, N'imageLocation', N'Image Location', NULL, 1, 1, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (58, 1090, 1079, 14, N'imageSize', N'Image Size', NULL, 2, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (59, 1061, 1051, 9, N'utilityLinks', N'Utility Links', NULL, 0, 0, N'', N'Utility links to display above the main navigation links')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (60, -88, 1095, 15, N'heading', N'Heading', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (61, -89, 1095, 15, N'quote', N'Quote', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (62, -88, 1095, 15, N'citation', N'Citation', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (63, 1035, 1096, 16, N'image1', N'Image 1', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (64, 1035, 1096, 16, N'image2', N'Image 2', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (65, 1035, 1096, 16, N'image3', N'Image 3', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (66, -88, 1111, 17, N'title', N'Title', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (67, 1062, 1111, 17, N'cta1', N'CTA 1', NULL, 2, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (68, 1062, 1111, 17, N'cta2', N'CTA 2', NULL, 3, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (69, -88, 1112, 18, N'title', N'Title', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (70, 1062, 1112, 18, N'cta1', N'CTA 1', NULL, 4, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (71, 1062, 1112, 18, N'cta2', N'CTA 2', NULL, 5, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (72, -87, 1112, 18, N'text', N'Text', NULL, 3, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (73, 1114, 1111, 17, N'alignment', N'Alignment', NULL, 4, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (74, 1114, 1112, 18, N'alignment', N'Alignment', NULL, 2, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (75, -88, 1120, 19, N'heading', N'Heading', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (76, -87, 1120, 19, N'text', N'Text', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (77, 1035, 1111, 17, N'backgroundImage', N'Background Image', NULL, 1, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (78, 1035, 1112, 18, N'backgroundImage', N'Background Image', NULL, 1, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (79, -88, 1059, 20, N'non-ContentAliases', N'Non-Content Aliases', NULL, 0, 0, N'', N'Comma separated lists of non content aliases to exclude from side navigation')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
/****** Object:  Table [dbo].[cmsPropertyData]    Script Date: 04/13/2014 01:14:23 ******/
CREATE TABLE [dbo].[cmsPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contentNodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NULL,
	[propertytypeid] [int] NOT NULL,
	[dataInt] [int] NULL,
	[dataDate] [datetime] NULL,
	[dataNvarchar] [nvarchar](500) NULL,
	[dataNtext] [ntext] NULL,
 CONSTRAINT [PK_cmsPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF)
)
GO
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData] ON [dbo].[cmsPropertyData] 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_1] ON [dbo].[cmsPropertyData] 
(
	[contentNodeId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_2] ON [dbo].[cmsPropertyData] 
(
	[versionId] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_3] ON [dbo].[cmsPropertyData] 
(
	[propertytypeid] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyData] ON
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1, 1060, N'c99abc2b-69d0-497a-b3bb-6c9e653af978', 28, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2, 1060, N'c36ac041-bdbe-4246-ae9d-e3cc3142c7c9', 28, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (3, 1060, N'a1ca6215-9e87-4dac-b991-1c2f41d14ba1', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (6, 1054, N'4fa4f3cc-42a3-4d9b-975c-4b48fb8a0caa', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (7, 1054, N'4fa4f3cc-42a3-4d9b-975c-4b48fb8a0caa', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (8, 1054, N'4fa4f3cc-42a3-4d9b-975c-4b48fb8a0caa', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (9, 1054, N'5a83986c-c8db-403a-a4f8-dfd44f30ce15', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10, 1054, N'5a83986c-c8db-403a-a4f8-dfd44f30ce15', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11, 1054, N'5a83986c-c8db-403a-a4f8-dfd44f30ce15', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (13, 1054, N'5a83986c-c8db-403a-a4f8-dfd44f30ce15', 33, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (14, 1065, N'02e1d78a-45a8-4cec-bced-acf830d6f0b3', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (15, 1065, N'02e1d78a-45a8-4cec-bced-acf830d6f0b3', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (16, 1065, N'02e1d78a-45a8-4cec-bced-acf830d6f0b3', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (17, 1065, N'503fcc0a-0199-44cd-b667-b3933b17ddab', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (18, 1065, N'503fcc0a-0199-44cd-b667-b3933b17ddab', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (19, 1065, N'503fcc0a-0199-44cd-b667-b3933b17ddab', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (20, 1065, N'503fcc0a-0199-44cd-b667-b3933b17ddab', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (21, 1066, N'd5bb40a4-9ed2-43a3-90ea-4b5183cd7a9a', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (22, 1066, N'd5bb40a4-9ed2-43a3-90ea-4b5183cd7a9a', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (23, 1066, N'd5bb40a4-9ed2-43a3-90ea-4b5183cd7a9a', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (24, 1066, N'd5bb40a4-9ed2-43a3-90ea-4b5183cd7a9a', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (25, 1066, N'b38df474-6d5f-40bf-a57f-6882145682bc', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (26, 1066, N'b38df474-6d5f-40bf-a57f-6882145682bc', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (27, 1066, N'b38df474-6d5f-40bf-a57f-6882145682bc', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (28, 1066, N'b38df474-6d5f-40bf-a57f-6882145682bc', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (29, 1066, N'a2f2833d-6535-429f-8a7a-b4c6027d7134', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (30, 1066, N'a2f2833d-6535-429f-8a7a-b4c6027d7134', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (31, 1066, N'a2f2833d-6535-429f-8a7a-b4c6027d7134', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (32, 1066, N'a2f2833d-6535-429f-8a7a-b4c6027d7134', 34, NULL, NULL, NULL, N'<p>Getting started content</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (33, 1065, N'd79b08ea-12dd-4feb-a710-d2ca89d94ae1', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (34, 1065, N'd79b08ea-12dd-4feb-a710-d2ca89d94ae1', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (35, 1065, N'd79b08ea-12dd-4feb-a710-d2ca89d94ae1', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (36, 1065, N'd79b08ea-12dd-4feb-a710-d2ca89d94ae1', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (37, 1067, N'2016a822-0cee-4bd7-be35-c37a95f15b39', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (38, 1067, N'2016a822-0cee-4bd7-be35-c37a95f15b39', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (39, 1067, N'2016a822-0cee-4bd7-be35-c37a95f15b39', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (40, 1067, N'2016a822-0cee-4bd7-be35-c37a95f15b39', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (41, 1067, N'dac2c40a-fa62-4318-a411-a741cc681f41', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (42, 1067, N'dac2c40a-fa62-4318-a411-a741cc681f41', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (43, 1067, N'dac2c40a-fa62-4318-a411-a741cc681f41', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (44, 1067, N'dac2c40a-fa62-4318-a411-a741cc681f41', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (45, 1067, N'e08b4aa4-21c6-4476-8ca1-9f971d0a3976', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (46, 1067, N'e08b4aa4-21c6-4476-8ca1-9f971d0a3976', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (47, 1067, N'e08b4aa4-21c6-4476-8ca1-9f971d0a3976', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (48, 1067, N'e08b4aa4-21c6-4476-8ca1-9f971d0a3976', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (49, 1068, N'2bdf4245-0b0f-4af5-9e19-19ec9a058816', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (50, 1068, N'2bdf4245-0b0f-4af5-9e19-19ec9a058816', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (51, 1068, N'2bdf4245-0b0f-4af5-9e19-19ec9a058816', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (52, 1068, N'2bdf4245-0b0f-4af5-9e19-19ec9a058816', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (53, 1068, N'7718150e-6bad-4d43-9d22-e04455940bc5', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (54, 1068, N'7718150e-6bad-4d43-9d22-e04455940bc5', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (55, 1068, N'7718150e-6bad-4d43-9d22-e04455940bc5', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (56, 1068, N'7718150e-6bad-4d43-9d22-e04455940bc5', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (57, 1069, N'd3677e69-2b92-4f03-870f-4ed9342e3850', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (58, 1069, N'd3677e69-2b92-4f03-870f-4ed9342e3850', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (59, 1069, N'd3677e69-2b92-4f03-870f-4ed9342e3850', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (60, 1069, N'd3677e69-2b92-4f03-870f-4ed9342e3850', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (61, 1069, N'9eb8becd-688d-4147-8b45-fef86e003e0e', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (62, 1069, N'9eb8becd-688d-4147-8b45-fef86e003e0e', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (63, 1069, N'9eb8becd-688d-4147-8b45-fef86e003e0e', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (64, 1069, N'9eb8becd-688d-4147-8b45-fef86e003e0e', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (65, 1069, N'dfc7ab9c-e40f-41e0-91d9-a9046d4530de', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (66, 1069, N'dfc7ab9c-e40f-41e0-91d9-a9046d4530de', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (67, 1069, N'dfc7ab9c-e40f-41e0-91d9-a9046d4530de', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (68, 1069, N'dfc7ab9c-e40f-41e0-91d9-a9046d4530de', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (69, 1069, N'e27e4828-fc29-4df3-b3fb-48cd131d8869', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (70, 1069, N'e27e4828-fc29-4df3-b3fb-48cd131d8869', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (71, 1069, N'e27e4828-fc29-4df3-b3fb-48cd131d8869', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (72, 1069, N'e27e4828-fc29-4df3-b3fb-48cd131d8869', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (73, 1068, N'be59a2c5-e1cb-442d-98e8-6ec004cbf400', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (74, 1068, N'be59a2c5-e1cb-442d-98e8-6ec004cbf400', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (75, 1068, N'be59a2c5-e1cb-442d-98e8-6ec004cbf400', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (76, 1068, N'be59a2c5-e1cb-442d-98e8-6ec004cbf400', 34, NULL, NULL, NULL, N'<p>Evaluate your garden here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (77, 1069, N'771aa397-e20f-4ed0-aef7-e0feca39e982', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (78, 1069, N'771aa397-e20f-4ed0-aef7-e0feca39e982', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (79, 1069, N'771aa397-e20f-4ed0-aef7-e0feca39e982', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (80, 1069, N'771aa397-e20f-4ed0-aef7-e0feca39e982', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (81, 1065, N'6b5ff58e-e2a0-41c0-8484-61ff307364d7', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (82, 1065, N'6b5ff58e-e2a0-41c0-8484-61ff307364d7', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (83, 1065, N'6b5ff58e-e2a0-41c0-8484-61ff307364d7', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (84, 1065, N'6b5ff58e-e2a0-41c0-8484-61ff307364d7', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (85, 1067, N'059c1545-97bb-4087-8e05-609472d8cdac', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (86, 1067, N'059c1545-97bb-4087-8e05-609472d8cdac', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (87, 1067, N'059c1545-97bb-4087-8e05-609472d8cdac', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (88, 1067, N'059c1545-97bb-4087-8e05-609472d8cdac', 34, NULL, NULL, NULL, N'<p>Nominate!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (89, 1054, N'98c4a658-b78b-4101-837c-cfd4d63d27f9', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (90, 1054, N'98c4a658-b78b-4101-837c-cfd4d63d27f9', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (91, 1054, N'98c4a658-b78b-4101-837c-cfd4d63d27f9', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (93, 1054, N'98c4a658-b78b-4101-837c-cfd4d63d27f9', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (94, 1060, N'a1ca6215-9e87-4dac-b991-1c2f41d14ba1', 35, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (95, 1060, N'a1ca6215-9e87-4dac-b991-1c2f41d14ba1', 36, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (96, 1054, N'98c4a658-b78b-4101-837c-cfd4d63d27f9', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (97, 1070, N'96ea989a-0033-4d35-a127-47779ca85652', 27, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (98, 1071, N'f29ca10b-ab37-4823-b146-21f5e393c0ed', 6, NULL, NULL, N'/media/1001/Raingarden-pic.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (99, 1071, N'f29ca10b-ab37-4823-b146-21f5e393c0ed', 7, NULL, NULL, N'533', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (100, 1071, N'f29ca10b-ab37-4823-b146-21f5e393c0ed', 8, NULL, NULL, N'345', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (101, 1071, N'f29ca10b-ab37-4823-b146-21f5e393c0ed', 9, NULL, NULL, N'61433', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (102, 1071, N'f29ca10b-ab37-4823-b146-21f5e393c0ed', 10, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (103, 1067, N'059c1545-97bb-4087-8e05-609472d8cdac', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (104, 1065, N'6b5ff58e-e2a0-41c0-8484-61ff307364d7', 37, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (105, 1069, N'771aa397-e20f-4ed0-aef7-e0feca39e982', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (106, 1068, N'be59a2c5-e1cb-442d-98e8-6ec004cbf400', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (107, 1066, N'a2f2833d-6535-429f-8a7a-b4c6027d7134', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (111, 1054, N'd4d357ce-a278-467d-8037-c5ab05717416', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (112, 1054, N'd4d357ce-a278-467d-8037-c5ab05717416', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (113, 1054, N'd4d357ce-a278-467d-8037-c5ab05717416', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (114, 1054, N'd4d357ce-a278-467d-8037-c5ab05717416', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (116, 1054, N'd4d357ce-a278-467d-8037-c5ab05717416', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (119, 1054, N'd81d308d-3d38-489a-ab2d-b273764e0737', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (120, 1054, N'd81d308d-3d38-489a-ab2d-b273764e0737', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (121, 1054, N'd81d308d-3d38-489a-ab2d-b273764e0737', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (122, 1054, N'd81d308d-3d38-489a-ab2d-b273764e0737', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (124, 1054, N'd81d308d-3d38-489a-ab2d-b273764e0737', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (126, 1071, N'f29ca10b-ab37-4823-b146-21f5e393c0ed', 41, NULL, NULL, N'17', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (143, 1065, N'99373f45-0d8b-4dad-98a3-551030778f8a', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (144, 1065, N'99373f45-0d8b-4dad-98a3-551030778f8a', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (145, 1065, N'99373f45-0d8b-4dad-98a3-551030778f8a', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (146, 1065, N'99373f45-0d8b-4dad-98a3-551030778f8a', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (147, 1065, N'99373f45-0d8b-4dad-98a3-551030778f8a', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (148, 1069, N'd2eac496-68d4-4a2d-be1b-3dbcf2479202', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (149, 1069, N'd2eac496-68d4-4a2d-be1b-3dbcf2479202', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (150, 1069, N'd2eac496-68d4-4a2d-be1b-3dbcf2479202', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (151, 1069, N'd2eac496-68d4-4a2d-be1b-3dbcf2479202', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (152, 1069, N'd2eac496-68d4-4a2d-be1b-3dbcf2479202', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (154, 1054, N'001eb834-8c7a-411b-a225-f5dc31faa67b', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (155, 1054, N'001eb834-8c7a-411b-a225-f5dc31faa67b', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (156, 1054, N'001eb834-8c7a-411b-a225-f5dc31faa67b', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (157, 1054, N'001eb834-8c7a-411b-a225-f5dc31faa67b', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (159, 1054, N'001eb834-8c7a-411b-a225-f5dc31faa67b', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"#","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"#","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"#","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"#","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"#","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (162, 1060, N'a1ca6215-9e87-4dac-b991-1c2f41d14ba1', 42, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (163, 1060, N'a1ca6215-9e87-4dac-b991-1c2f41d14ba1', 43, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (165, 1060, N'7a2920ac-19c3-4644-bf65-6a39eaba622a', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (166, 1060, N'7a2920ac-19c3-4644-bf65-6a39eaba622a', 35, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (167, 1060, N'7a2920ac-19c3-4644-bf65-6a39eaba622a', 36, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (168, 1060, N'7a2920ac-19c3-4644-bf65-6a39eaba622a', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (169, 1060, N'7a2920ac-19c3-4644-bf65-6a39eaba622a', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (170, 1060, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (171, 1060, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', 35, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (172, 1060, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', 36, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (173, 1060, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (174, 1060, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (175, 1060, N'7407281a-3b7b-4d1b-b0e3-c2daac69e992', 46, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (176, 1060, N'f6756a99-90af-437f-abbb-d190bb512260', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (177, 1060, N'f6756a99-90af-437f-abbb-d190bb512260', 35, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (178, 1060, N'f6756a99-90af-437f-abbb-d190bb512260', 36, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (179, 1060, N'f6756a99-90af-437f-abbb-d190bb512260', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (180, 1060, N'f6756a99-90af-437f-abbb-d190bb512260', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (181, 1060, N'f6756a99-90af-437f-abbb-d190bb512260', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (182, 1060, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (183, 1060, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', 35, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (184, 1060, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', 36, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (185, 1060, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (186, 1060, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (187, 1060, N'9db85659-cdc5-4f3e-ab6e-7f599420e2cd', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (188, 1060, N'1b208d54-f459-4967-8a12-b53c279675e6', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (189, 1060, N'1b208d54-f459-4967-8a12-b53c279675e6', 35, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (190, 1060, N'1b208d54-f459-4967-8a12-b53c279675e6', 36, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (191, 1060, N'1b208d54-f459-4967-8a12-b53c279675e6', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (192, 1060, N'1b208d54-f459-4967-8a12-b53c279675e6', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (193, 1060, N'1b208d54-f459-4967-8a12-b53c279675e6', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (194, 1060, N'0e829276-7c29-41d7-b47f-119146978c0e', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (195, 1060, N'0e829276-7c29-41d7-b47f-119146978c0e', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (196, 1060, N'0e829276-7c29-41d7-b47f-119146978c0e', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (197, 1060, N'0e829276-7c29-41d7-b47f-119146978c0e', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (198, 1060, N'0e829276-7c29-41d7-b47f-119146978c0e', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (199, 1060, N'0e829276-7c29-41d7-b47f-119146978c0e', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (200, 1060, N'e401c327-7266-403a-9863-78fc3c191b7a', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (201, 1060, N'e401c327-7266-403a-9863-78fc3c191b7a', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (202, 1060, N'e401c327-7266-403a-9863-78fc3c191b7a', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (203, 1060, N'e401c327-7266-403a-9863-78fc3c191b7a', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (204, 1060, N'e401c327-7266-403a-9863-78fc3c191b7a', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (205, 1060, N'e401c327-7266-403a-9863-78fc3c191b7a', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (206, 1060, N'e401c327-7266-403a-9863-78fc3c191b7a', 47, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (207, 1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (208, 1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (209, 1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (210, 1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (211, 1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (212, 1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (213, 1060, N'72615184-5231-4ad6-a9c7-341056baf7ee', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (214, 1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (215, 1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (216, 1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (217, 1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (218, 1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (219, 1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (220, 1060, N'040444b7-5fc7-4f00-9c11-475b3faa8f06', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (221, 1069, N'3be7858c-682e-45a4-b09f-1d91086d9775', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (222, 1069, N'3be7858c-682e-45a4-b09f-1d91086d9775', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (223, 1069, N'3be7858c-682e-45a4-b09f-1d91086d9775', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (224, 1069, N'3be7858c-682e-45a4-b09f-1d91086d9775', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (225, 1069, N'3be7858c-682e-45a4-b09f-1d91086d9775', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (226, 1069, N'd1e50115-b6f6-4908-bd04-5d893cfd8457', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (227, 1069, N'd1e50115-b6f6-4908-bd04-5d893cfd8457', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (228, 1069, N'd1e50115-b6f6-4908-bd04-5d893cfd8457', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (229, 1069, N'd1e50115-b6f6-4908-bd04-5d893cfd8457', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (230, 1069, N'd1e50115-b6f6-4908-bd04-5d893cfd8457', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (231, 1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (232, 1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (233, 1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (234, 1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', 42, NULL, NULL, N'nerdery', NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (235, 1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (236, 1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (237, 1060, N'b16e5182-d4b5-40c6-bfc2-cf90374b518a', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/ap', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (238, 1060, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (239, 1060, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (240, 1060, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (241, 1060, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (242, 1060, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (243, 1060, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (244, 1060, N'0ed89670-39b9-4c46-ab0a-5935130fcc55', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/ap', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (245, 1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (246, 1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (247, 1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (248, 1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (249, 1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (250, 1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (251, 1060, N'2b1e6899-f545-4e18-9760-f1d08deb771e', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (252, 1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (253, 1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (254, 1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (255, 1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (256, 1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (257, 1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (258, 1060, N'5ac236f2-50b1-4781-9ecb-0877a710c612', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (259, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (260, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (261, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (262, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (263, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (264, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (265, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (266, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 48, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (267, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 49, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (268, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (269, 1060, N'9ea7d42a-fcdc-499c-a8b6-0fc0fe13fb23', 51, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (270, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (271, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (272, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (273, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (274, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (275, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (276, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (277, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 48, NULL, NULL, N'metro-mlooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (278, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 49, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (279, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 50, NULL, NULL, N'metro-blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (280, 1060, N'360250f6-aefc-479c-bb42-10ac287407a4', 51, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (281, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (282, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (283, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (284, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (285, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (286, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (287, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (288, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 48, NULL, NULL, N'metro-mlooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (289, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 49, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (290, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 50, NULL, NULL, N'metro-blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (291, 1060, N'74666679-4eca-4c83-80ee-78dbd0ffdf39', 51, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (292, 1054, N'9945b911-2938-459d-b775-c8adc13441ea', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (293, 1054, N'9945b911-2938-459d-b775-c8adc13441ea', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (294, 1054, N'9945b911-2938-459d-b775-c8adc13441ea', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (295, 1054, N'9945b911-2938-459d-b775-c8adc13441ea', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (297, 1054, N'9945b911-2938-459d-b775-c8adc13441ea', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"#","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"#","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"#","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"#","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"#","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (299, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (300, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (301, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (302, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (303, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (304, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (305, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (306, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 48, NULL, NULL, N'metro-blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (307, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 49, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (308, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 50, NULL, NULL, N'metro-blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (309, 1060, N'cbe1fd51-16e0-427c-86ae-ad0ad53bdd78', 51, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (310, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (311, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (312, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (313, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (314, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (315, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (316, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (317, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 48, NULL, NULL, N'metro-blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (318, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 49, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (319, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 50, NULL, NULL, N'metro-blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (320, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 51, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (322, 1065, N'946a59bf-7878-41f2-a1c6-79aed4ee41cd', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (323, 1065, N'946a59bf-7878-41f2-a1c6-79aed4ee41cd', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (324, 1065, N'946a59bf-7878-41f2-a1c6-79aed4ee41cd', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (325, 1065, N'946a59bf-7878-41f2-a1c6-79aed4ee41cd', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (326, 1065, N'946a59bf-7878-41f2-a1c6-79aed4ee41cd', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (327, 1069, N'4a9ce66c-947f-4f1b-846d-a537b7b38a7a', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (328, 1069, N'4a9ce66c-947f-4f1b-846d-a537b7b38a7a', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (329, 1069, N'4a9ce66c-947f-4f1b-846d-a537b7b38a7a', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (330, 1069, N'4a9ce66c-947f-4f1b-846d-a537b7b38a7a', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (331, 1069, N'4a9ce66c-947f-4f1b-846d-a537b7b38a7a', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (332, 1066, N'e073e86a-f624-4f5a-9bd3-23fe5841e5b4', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (333, 1066, N'e073e86a-f624-4f5a-9bd3-23fe5841e5b4', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (334, 1066, N'e073e86a-f624-4f5a-9bd3-23fe5841e5b4', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (335, 1066, N'e073e86a-f624-4f5a-9bd3-23fe5841e5b4', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (336, 1066, N'e073e86a-f624-4f5a-9bd3-23fe5841e5b4', 34, NULL, NULL, NULL, N'<p>Getting started content</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (337, 1067, N'b6717821-d8bb-476b-8e68-8883820dacd3', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (338, 1067, N'b6717821-d8bb-476b-8e68-8883820dacd3', 31, NULL, NULL, N'', NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (339, 1067, N'b6717821-d8bb-476b-8e68-8883820dacd3', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (340, 1067, N'b6717821-d8bb-476b-8e68-8883820dacd3', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (341, 1067, N'b6717821-d8bb-476b-8e68-8883820dacd3', 34, NULL, NULL, NULL, N'<p>Nominate!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (342, 1068, N'a524a104-d622-4332-8aa6-56a653d4580e', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (343, 1068, N'a524a104-d622-4332-8aa6-56a653d4580e', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (344, 1068, N'a524a104-d622-4332-8aa6-56a653d4580e', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (345, 1068, N'a524a104-d622-4332-8aa6-56a653d4580e', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (346, 1068, N'a524a104-d622-4332-8aa6-56a653d4580e', 34, NULL, NULL, NULL, N'<p>Evaluate your garden here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (347, 1069, N'be6f3ebf-6c59-47db-b09f-08a5ede16d25', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (348, 1069, N'be6f3ebf-6c59-47db-b09f-08a5ede16d25', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (349, 1069, N'be6f3ebf-6c59-47db-b09f-08a5ede16d25', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (350, 1069, N'be6f3ebf-6c59-47db-b09f-08a5ede16d25', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (351, 1069, N'be6f3ebf-6c59-47db-b09f-08a5ede16d25', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (352, 1066, N'f89dfaed-c3f8-4bc5-89c5-7023fc744dd9', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (353, 1066, N'f89dfaed-c3f8-4bc5-89c5-7023fc744dd9', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (354, 1066, N'f89dfaed-c3f8-4bc5-89c5-7023fc744dd9', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (355, 1066, N'f89dfaed-c3f8-4bc5-89c5-7023fc744dd9', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (356, 1066, N'f89dfaed-c3f8-4bc5-89c5-7023fc744dd9', 34, NULL, NULL, NULL, N'<p>Getting started content</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (357, 1067, N'd2cbb2dc-387c-49fe-ba8d-47b173c1e173', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (358, 1067, N'd2cbb2dc-387c-49fe-ba8d-47b173c1e173', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (359, 1067, N'd2cbb2dc-387c-49fe-ba8d-47b173c1e173', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (360, 1067, N'd2cbb2dc-387c-49fe-ba8d-47b173c1e173', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (361, 1067, N'd2cbb2dc-387c-49fe-ba8d-47b173c1e173', 34, NULL, NULL, NULL, N'<p>Nominate!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (362, 1068, N'33a63839-f3bd-46c2-84f7-c7c5883c1689', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (363, 1068, N'33a63839-f3bd-46c2-84f7-c7c5883c1689', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (364, 1068, N'33a63839-f3bd-46c2-84f7-c7c5883c1689', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (365, 1068, N'33a63839-f3bd-46c2-84f7-c7c5883c1689', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (366, 1068, N'33a63839-f3bd-46c2-84f7-c7c5883c1689', 34, NULL, NULL, NULL, N'<p>Evaluate your garden here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (367, 1065, N'c2d44d35-49e2-47c0-a05b-772857aa8f01', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (368, 1065, N'c2d44d35-49e2-47c0-a05b-772857aa8f01', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (369, 1065, N'c2d44d35-49e2-47c0-a05b-772857aa8f01', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (370, 1065, N'c2d44d35-49e2-47c0-a05b-772857aa8f01', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (371, 1065, N'c2d44d35-49e2-47c0-a05b-772857aa8f01', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (372, 1068, N'f7c03f4b-5d5a-46c0-bff3-32ea052318eb', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (373, 1068, N'f7c03f4b-5d5a-46c0-bff3-32ea052318eb', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (374, 1068, N'f7c03f4b-5d5a-46c0-bff3-32ea052318eb', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (375, 1068, N'f7c03f4b-5d5a-46c0-bff3-32ea052318eb', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (376, 1068, N'f7c03f4b-5d5a-46c0-bff3-32ea052318eb', 34, NULL, NULL, NULL, N'<p>Evaluate your garden here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (377, 1067, N'd6434aa6-ad99-40e9-a1f9-97785c2f6e07', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (378, 1067, N'd6434aa6-ad99-40e9-a1f9-97785c2f6e07', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (379, 1067, N'd6434aa6-ad99-40e9-a1f9-97785c2f6e07', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (380, 1067, N'd6434aa6-ad99-40e9-a1f9-97785c2f6e07', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (381, 1067, N'd6434aa6-ad99-40e9-a1f9-97785c2f6e07', 34, NULL, NULL, NULL, N'<p>Nominate!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (382, 1066, N'6de5f370-087c-477b-b606-dcf3fbf19f27', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (383, 1066, N'6de5f370-087c-477b-b606-dcf3fbf19f27', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (384, 1066, N'6de5f370-087c-477b-b606-dcf3fbf19f27', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (385, 1066, N'6de5f370-087c-477b-b606-dcf3fbf19f27', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (386, 1066, N'6de5f370-087c-477b-b606-dcf3fbf19f27', 34, NULL, NULL, NULL, N'<p>Getting started content</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (387, 1069, N'c3539526-20d9-492d-9191-11b2a9e46ede', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (388, 1069, N'c3539526-20d9-492d-9191-11b2a9e46ede', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (389, 1069, N'c3539526-20d9-492d-9191-11b2a9e46ede', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (390, 1069, N'c3539526-20d9-492d-9191-11b2a9e46ede', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (391, 1069, N'c3539526-20d9-492d-9191-11b2a9e46ede', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (392, 1076, N'906bf507-3c47-4190-8507-55a5958fbecb', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (393, 1076, N'906bf507-3c47-4190-8507-55a5958fbecb', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (394, 1076, N'906bf507-3c47-4190-8507-55a5958fbecb', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (395, 1076, N'906bf507-3c47-4190-8507-55a5958fbecb', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (396, 1076, N'906bf507-3c47-4190-8507-55a5958fbecb', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (397, 1076, N'b99a8aeb-004b-48d3-8e87-f4e333f39e78', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (398, 1076, N'b99a8aeb-004b-48d3-8e87-f4e333f39e78', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (399, 1076, N'b99a8aeb-004b-48d3-8e87-f4e333f39e78', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (400, 1076, N'b99a8aeb-004b-48d3-8e87-f4e333f39e78', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (401, 1076, N'b99a8aeb-004b-48d3-8e87-f4e333f39e78', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (402, 1077, N'5e8519e0-656c-434d-95bc-fd366aea2a85', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (403, 1077, N'5e8519e0-656c-434d-95bc-fd366aea2a85', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (404, 1077, N'5e8519e0-656c-434d-95bc-fd366aea2a85', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (405, 1077, N'5e8519e0-656c-434d-95bc-fd366aea2a85', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (406, 1077, N'5e8519e0-656c-434d-95bc-fd366aea2a85', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (407, 1077, N'76fd6b9e-cc1f-430e-a46b-d3da7d9896be', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (408, 1077, N'76fd6b9e-cc1f-430e-a46b-d3da7d9896be', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (409, 1077, N'76fd6b9e-cc1f-430e-a46b-d3da7d9896be', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (410, 1077, N'76fd6b9e-cc1f-430e-a46b-d3da7d9896be', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (411, 1077, N'76fd6b9e-cc1f-430e-a46b-d3da7d9896be', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (412, 1078, N'1c375f5f-3956-4cab-b4de-939c76b8f3af', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (413, 1078, N'1c375f5f-3956-4cab-b4de-939c76b8f3af', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (414, 1078, N'1c375f5f-3956-4cab-b4de-939c76b8f3af', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (415, 1078, N'1c375f5f-3956-4cab-b4de-939c76b8f3af', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (416, 1078, N'1c375f5f-3956-4cab-b4de-939c76b8f3af', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (417, 1078, N'205c6d9e-9262-47b6-b818-a3e7be626713', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (418, 1078, N'205c6d9e-9262-47b6-b818-a3e7be626713', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (419, 1078, N'205c6d9e-9262-47b6-b818-a3e7be626713', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (420, 1078, N'205c6d9e-9262-47b6-b818-a3e7be626713', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (421, 1078, N'205c6d9e-9262-47b6-b818-a3e7be626713', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (422, 1080, N'997c8443-e949-4c9d-a510-c6008f2ec77f', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (423, 1080, N'997c8443-e949-4c9d-a510-c6008f2ec77f', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (424, 1080, N'997c8443-e949-4c9d-a510-c6008f2ec77f', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (425, 1080, N'997c8443-e949-4c9d-a510-c6008f2ec77f', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (426, 1080, N'997c8443-e949-4c9d-a510-c6008f2ec77f', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (427, 1080, N'4f688e42-ef58-494c-b969-ed02ef763ac3', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (428, 1080, N'4f688e42-ef58-494c-b969-ed02ef763ac3', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (429, 1080, N'4f688e42-ef58-494c-b969-ed02ef763ac3', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (430, 1080, N'4f688e42-ef58-494c-b969-ed02ef763ac3', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (431, 1080, N'4f688e42-ef58-494c-b969-ed02ef763ac3', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (432, 1081, N'61bbf614-38a8-4ff0-b274-c7849dab76ee', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (433, 1081, N'61bbf614-38a8-4ff0-b274-c7849dab76ee', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (434, 1081, N'61bbf614-38a8-4ff0-b274-c7849dab76ee', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (435, 1081, N'61bbf614-38a8-4ff0-b274-c7849dab76ee', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (436, 1081, N'61bbf614-38a8-4ff0-b274-c7849dab76ee', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (437, 1081, N'bb2f40f4-82e2-45de-87a7-73a896595b1e', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (438, 1081, N'bb2f40f4-82e2-45de-87a7-73a896595b1e', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (439, 1081, N'bb2f40f4-82e2-45de-87a7-73a896595b1e', 32, NULL, NULL, N'', NULL)
GO
print 'Processed 400 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (440, 1081, N'bb2f40f4-82e2-45de-87a7-73a896595b1e', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (441, 1081, N'bb2f40f4-82e2-45de-87a7-73a896595b1e', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (442, 1082, N'285f3dca-60e6-419f-b8e0-0c900caceec9', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (443, 1082, N'285f3dca-60e6-419f-b8e0-0c900caceec9', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (444, 1082, N'285f3dca-60e6-419f-b8e0-0c900caceec9', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (445, 1082, N'285f3dca-60e6-419f-b8e0-0c900caceec9', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (446, 1082, N'285f3dca-60e6-419f-b8e0-0c900caceec9', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (447, 1082, N'75866210-b028-4c52-b71e-63a1a76c2766', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (448, 1082, N'75866210-b028-4c52-b71e-63a1a76c2766', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (449, 1082, N'75866210-b028-4c52-b71e-63a1a76c2766', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (450, 1082, N'75866210-b028-4c52-b71e-63a1a76c2766', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (451, 1082, N'75866210-b028-4c52-b71e-63a1a76c2766', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (452, 1067, N'fe31c5b0-537d-4bd3-b515-10314997c164', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (453, 1067, N'fe31c5b0-537d-4bd3-b515-10314997c164', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (454, 1067, N'fe31c5b0-537d-4bd3-b515-10314997c164', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (455, 1067, N'fe31c5b0-537d-4bd3-b515-10314997c164', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (456, 1067, N'fe31c5b0-537d-4bd3-b515-10314997c164', 34, NULL, NULL, NULL, N'<p>Nominate!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (457, 1068, N'3a8bbf65-56d4-4962-b90c-cd75d0f58784', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (458, 1068, N'3a8bbf65-56d4-4962-b90c-cd75d0f58784', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (459, 1068, N'3a8bbf65-56d4-4962-b90c-cd75d0f58784', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (460, 1068, N'3a8bbf65-56d4-4962-b90c-cd75d0f58784', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (461, 1068, N'3a8bbf65-56d4-4962-b90c-cd75d0f58784', 34, NULL, NULL, NULL, N'<p>Evaluate your garden here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (462, 1066, N'3427b47c-56a1-4d3e-ad0f-69d036331ecf', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (463, 1066, N'3427b47c-56a1-4d3e-ad0f-69d036331ecf', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (464, 1066, N'3427b47c-56a1-4d3e-ad0f-69d036331ecf', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (465, 1066, N'3427b47c-56a1-4d3e-ad0f-69d036331ecf', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (466, 1066, N'3427b47c-56a1-4d3e-ad0f-69d036331ecf', 34, NULL, NULL, NULL, N'<p>Getting started content</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (467, 1084, N'623b9ca4-b4e5-4535-b533-ba101d8a4919', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (468, 1084, N'623b9ca4-b4e5-4535-b533-ba101d8a4919', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (469, 1084, N'623b9ca4-b4e5-4535-b533-ba101d8a4919', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (470, 1084, N'623b9ca4-b4e5-4535-b533-ba101d8a4919', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (471, 1084, N'623b9ca4-b4e5-4535-b533-ba101d8a4919', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (472, 1084, N'8f240c1d-2e9f-4432-9a2d-96375a1ad85d', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (473, 1084, N'8f240c1d-2e9f-4432-9a2d-96375a1ad85d', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (474, 1084, N'8f240c1d-2e9f-4432-9a2d-96375a1ad85d', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (475, 1084, N'8f240c1d-2e9f-4432-9a2d-96375a1ad85d', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (476, 1084, N'8f240c1d-2e9f-4432-9a2d-96375a1ad85d', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (477, 1085, N'21b03ec1-253c-4ac3-a1fb-17b8973a3a42', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (478, 1085, N'21b03ec1-253c-4ac3-a1fb-17b8973a3a42', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (479, 1085, N'21b03ec1-253c-4ac3-a1fb-17b8973a3a42', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (480, 1085, N'21b03ec1-253c-4ac3-a1fb-17b8973a3a42', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (481, 1085, N'21b03ec1-253c-4ac3-a1fb-17b8973a3a42', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (482, 1085, N'9fa7ba2e-2e8b-4352-8e39-e507aa37b69d', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (483, 1085, N'9fa7ba2e-2e8b-4352-8e39-e507aa37b69d', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (484, 1085, N'9fa7ba2e-2e8b-4352-8e39-e507aa37b69d', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (485, 1085, N'9fa7ba2e-2e8b-4352-8e39-e507aa37b69d', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (486, 1085, N'9fa7ba2e-2e8b-4352-8e39-e507aa37b69d', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (487, 1086, N'f7596132-4713-47d9-aff8-d28fb95a4df6', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (488, 1086, N'f7596132-4713-47d9-aff8-d28fb95a4df6', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (489, 1086, N'f7596132-4713-47d9-aff8-d28fb95a4df6', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (490, 1086, N'f7596132-4713-47d9-aff8-d28fb95a4df6', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (491, 1086, N'f7596132-4713-47d9-aff8-d28fb95a4df6', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (492, 1086, N'4d3b708f-7bf1-4f97-b9bd-cb09efc00b01', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (493, 1086, N'4d3b708f-7bf1-4f97-b9bd-cb09efc00b01', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (494, 1086, N'4d3b708f-7bf1-4f97-b9bd-cb09efc00b01', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (495, 1086, N'4d3b708f-7bf1-4f97-b9bd-cb09efc00b01', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (496, 1086, N'4d3b708f-7bf1-4f97-b9bd-cb09efc00b01', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (497, 1087, N'f5753041-68fe-4365-b2e2-6b76a1614e39', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (498, 1087, N'f5753041-68fe-4365-b2e2-6b76a1614e39', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (499, 1087, N'f5753041-68fe-4365-b2e2-6b76a1614e39', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (500, 1087, N'f5753041-68fe-4365-b2e2-6b76a1614e39', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (501, 1087, N'f5753041-68fe-4365-b2e2-6b76a1614e39', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (502, 1087, N'6d463da2-4476-4818-b641-153162fc7936', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (503, 1087, N'6d463da2-4476-4818-b641-153162fc7936', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (504, 1087, N'6d463da2-4476-4818-b641-153162fc7936', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (505, 1087, N'6d463da2-4476-4818-b641-153162fc7936', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (506, 1087, N'6d463da2-4476-4818-b641-153162fc7936', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (507, 1088, N'bec0255b-cda2-4e0a-8810-5b1c9b4ecf77', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (508, 1088, N'bec0255b-cda2-4e0a-8810-5b1c9b4ecf77', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (509, 1088, N'bec0255b-cda2-4e0a-8810-5b1c9b4ecf77', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (510, 1088, N'bec0255b-cda2-4e0a-8810-5b1c9b4ecf77', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (511, 1088, N'bec0255b-cda2-4e0a-8810-5b1c9b4ecf77', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (512, 1088, N'60589e4c-1517-4206-9f74-f11ef8aa861a', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (513, 1088, N'60589e4c-1517-4206-9f74-f11ef8aa861a', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (514, 1088, N'60589e4c-1517-4206-9f74-f11ef8aa861a', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (515, 1088, N'60589e4c-1517-4206-9f74-f11ef8aa861a', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (516, 1088, N'60589e4c-1517-4206-9f74-f11ef8aa861a', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (517, 1084, N'15e97317-2b6f-4dc2-9de0-f33aeb5da76c', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (518, 1084, N'15e97317-2b6f-4dc2-9de0-f33aeb5da76c', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (519, 1084, N'15e97317-2b6f-4dc2-9de0-f33aeb5da76c', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (520, 1084, N'15e97317-2b6f-4dc2-9de0-f33aeb5da76c', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (521, 1084, N'15e97317-2b6f-4dc2-9de0-f33aeb5da76c', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (522, 1084, N'04421ee4-e917-46d5-b0a1-d26494abb947', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (523, 1084, N'04421ee4-e917-46d5-b0a1-d26494abb947', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (524, 1084, N'04421ee4-e917-46d5-b0a1-d26494abb947', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (525, 1084, N'04421ee4-e917-46d5-b0a1-d26494abb947', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (526, 1084, N'04421ee4-e917-46d5-b0a1-d26494abb947', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (527, 1091, N'0c65b3c7-0df7-423d-8ad8-82dfe9d77a73', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (528, 1091, N'0c65b3c7-0df7-423d-8ad8-82dfe9d77a73', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (529, 1091, N'0c65b3c7-0df7-423d-8ad8-82dfe9d77a73', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (530, 1091, N'0c65b3c7-0df7-423d-8ad8-82dfe9d77a73', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (531, 1091, N'0c65b3c7-0df7-423d-8ad8-82dfe9d77a73', 53, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (532, 1091, N'ae61d94d-e7db-4a81-976e-8b6da2b46ff5', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (533, 1091, N'ae61d94d-e7db-4a81-976e-8b6da2b46ff5', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (534, 1091, N'ae61d94d-e7db-4a81-976e-8b6da2b46ff5', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (535, 1091, N'ae61d94d-e7db-4a81-976e-8b6da2b46ff5', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (536, 1091, N'ae61d94d-e7db-4a81-976e-8b6da2b46ff5', 53, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (537, 1091, N'14d1982d-c684-4e7e-abf6-ba01cb9e267e', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (538, 1091, N'14d1982d-c684-4e7e-abf6-ba01cb9e267e', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (539, 1091, N'14d1982d-c684-4e7e-abf6-ba01cb9e267e', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (540, 1091, N'14d1982d-c684-4e7e-abf6-ba01cb9e267e', 37, NULL, NULL, N'', NULL)
GO
print 'Processed 500 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (541, 1091, N'14d1982d-c684-4e7e-abf6-ba01cb9e267e', 53, NULL, NULL, NULL, N'{"Title":"Nominate a Garden","Mode":1,"NodeId":null,"Url":"https://www.metroblooms.org/nominate.php","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (542, 1091, N'8b20e26f-ae81-4b3a-93d6-3c690ba22c5d', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (543, 1091, N'8b20e26f-ae81-4b3a-93d6-3c690ba22c5d', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (544, 1091, N'8b20e26f-ae81-4b3a-93d6-3c690ba22c5d', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (545, 1091, N'8b20e26f-ae81-4b3a-93d6-3c690ba22c5d', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (546, 1091, N'8b20e26f-ae81-4b3a-93d6-3c690ba22c5d', 53, NULL, NULL, NULL, N'{"Title":"Submit a Garden","Mode":1,"NodeId":null,"Url":"https://www.metroblooms.org/nominate.php","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (547, 1066, N'08f41152-20ed-4f24-8f21-1d87ca3500f3', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (548, 1066, N'08f41152-20ed-4f24-8f21-1d87ca3500f3', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (549, 1066, N'08f41152-20ed-4f24-8f21-1d87ca3500f3', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (550, 1066, N'08f41152-20ed-4f24-8f21-1d87ca3500f3', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (551, 1066, N'08f41152-20ed-4f24-8f21-1d87ca3500f3', 34, NULL, NULL, NULL, N'<p>Getting started content</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (552, 1068, N'5a43da8a-9a17-47c1-b080-bff98fdeeeca', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (553, 1068, N'5a43da8a-9a17-47c1-b080-bff98fdeeeca', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (554, 1068, N'5a43da8a-9a17-47c1-b080-bff98fdeeeca', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (555, 1068, N'5a43da8a-9a17-47c1-b080-bff98fdeeeca', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (556, 1068, N'5a43da8a-9a17-47c1-b080-bff98fdeeeca', 34, NULL, NULL, NULL, N'<p>Evaluate your garden here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (557, 1067, N'b96cb2a8-58be-41a1-a933-5bf72c5fb278', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (558, 1067, N'b96cb2a8-58be-41a1-a933-5bf72c5fb278', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (559, 1067, N'b96cb2a8-58be-41a1-a933-5bf72c5fb278', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (560, 1067, N'b96cb2a8-58be-41a1-a933-5bf72c5fb278', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (561, 1067, N'b96cb2a8-58be-41a1-a933-5bf72c5fb278', 34, NULL, NULL, NULL, N'<p>Nominate!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (562, 1091, N'ba292480-d5ab-4f7f-b410-beacdee797db', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (563, 1091, N'ba292480-d5ab-4f7f-b410-beacdee797db', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (564, 1091, N'ba292480-d5ab-4f7f-b410-beacdee797db', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (565, 1091, N'ba292480-d5ab-4f7f-b410-beacdee797db', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (566, 1091, N'ba292480-d5ab-4f7f-b410-beacdee797db', 53, NULL, NULL, NULL, N'{"Title":"Submit a Garden","Mode":1,"NodeId":null,"Url":"https://www.metroblooms.org/nominate.php","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (567, 1065, N'3df2d94b-4c08-416f-a0b4-62b33dd599ab', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (568, 1065, N'3df2d94b-4c08-416f-a0b4-62b33dd599ab', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (569, 1065, N'3df2d94b-4c08-416f-a0b4-62b33dd599ab', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (570, 1065, N'3df2d94b-4c08-416f-a0b4-62b33dd599ab', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (571, 1065, N'3df2d94b-4c08-416f-a0b4-62b33dd599ab', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (572, 1069, N'2f6d9834-c374-4d57-a684-6d5f0a4e8063', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (573, 1069, N'2f6d9834-c374-4d57-a684-6d5f0a4e8063', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (574, 1069, N'2f6d9834-c374-4d57-a684-6d5f0a4e8063', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (575, 1069, N'2f6d9834-c374-4d57-a684-6d5f0a4e8063', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (576, 1069, N'2f6d9834-c374-4d57-a684-6d5f0a4e8063', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (577, 1067, N'96e5d485-d19d-4853-a4e0-03e8e78a32be', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (578, 1067, N'96e5d485-d19d-4853-a4e0-03e8e78a32be', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (579, 1067, N'96e5d485-d19d-4853-a4e0-03e8e78a32be', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (580, 1067, N'96e5d485-d19d-4853-a4e0-03e8e78a32be', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (581, 1067, N'96e5d485-d19d-4853-a4e0-03e8e78a32be', 34, NULL, NULL, NULL, N'<p>Nominate!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (582, 1068, N'11212ba1-4c67-4676-92da-f05990feb076', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (583, 1068, N'11212ba1-4c67-4676-92da-f05990feb076', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (584, 1068, N'11212ba1-4c67-4676-92da-f05990feb076', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (585, 1068, N'11212ba1-4c67-4676-92da-f05990feb076', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (586, 1068, N'11212ba1-4c67-4676-92da-f05990feb076', 34, NULL, NULL, NULL, N'<p>Evaluate your garden here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (587, 1066, N'2d93c073-1aba-4021-84ff-3039080dacbe', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (588, 1066, N'2d93c073-1aba-4021-84ff-3039080dacbe', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (589, 1066, N'2d93c073-1aba-4021-84ff-3039080dacbe', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (590, 1066, N'2d93c073-1aba-4021-84ff-3039080dacbe', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (591, 1066, N'2d93c073-1aba-4021-84ff-3039080dacbe', 34, NULL, NULL, NULL, N'<p>Getting started content</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (592, 1094, N'ac66e4a6-02dd-42c8-b0d3-a21d12365763', 54, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (593, 1094, N'ac66e4a6-02dd-42c8-b0d3-a21d12365763', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (594, 1094, N'ac66e4a6-02dd-42c8-b0d3-a21d12365763', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (595, 1094, N'ac66e4a6-02dd-42c8-b0d3-a21d12365763', 57, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (596, 1094, N'ac66e4a6-02dd-42c8-b0d3-a21d12365763', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (597, 1094, N'71374bec-8b38-4f28-8735-40b3eb45f99f', 54, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (598, 1094, N'71374bec-8b38-4f28-8735-40b3eb45f99f', 55, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (599, 1094, N'71374bec-8b38-4f28-8735-40b3eb45f99f', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (600, 1094, N'71374bec-8b38-4f28-8735-40b3eb45f99f', 57, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (601, 1094, N'71374bec-8b38-4f28-8735-40b3eb45f99f', 58, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (602, 1094, N'1e5ad465-3f68-44e1-883a-9b1dead92ced', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (603, 1094, N'1e5ad465-3f68-44e1-883a-9b1dead92ced', 55, NULL, NULL, NULL, N'<p><strong>Test</strong></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (604, 1094, N'1e5ad465-3f68-44e1-883a-9b1dead92ced', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (605, 1094, N'1e5ad465-3f68-44e1-883a-9b1dead92ced', 57, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (606, 1094, N'1e5ad465-3f68-44e1-883a-9b1dead92ced', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (607, 1094, N'f193d91a-c41d-47c3-8289-a4d70f35b5f0', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (608, 1094, N'f193d91a-c41d-47c3-8289-a4d70f35b5f0', 55, NULL, NULL, NULL, N'<p><strong>Test</strong></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (609, 1094, N'f193d91a-c41d-47c3-8289-a4d70f35b5f0', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (610, 1094, N'f193d91a-c41d-47c3-8289-a4d70f35b5f0', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (611, 1094, N'f193d91a-c41d-47c3-8289-a4d70f35b5f0', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (612, 1094, N'a91a9142-74fd-4a96-afdb-0015ca09ed69', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (613, 1094, N'a91a9142-74fd-4a96-afdb-0015ca09ed69', 55, NULL, NULL, NULL, N'<p><strong>Test</strong></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (614, 1094, N'a91a9142-74fd-4a96-afdb-0015ca09ed69', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (615, 1094, N'a91a9142-74fd-4a96-afdb-0015ca09ed69', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (616, 1094, N'a91a9142-74fd-4a96-afdb-0015ca09ed69', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (617, 1054, N'df741113-1693-40dd-a84f-cbec0ca7efde', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (618, 1054, N'df741113-1693-40dd-a84f-cbec0ca7efde', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (619, 1054, N'df741113-1693-40dd-a84f-cbec0ca7efde', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (620, 1054, N'df741113-1693-40dd-a84f-cbec0ca7efde', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (622, 1054, N'df741113-1693-40dd-a84f-cbec0ca7efde', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"#","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"#","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"#","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"#","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"#","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (624, 1054, N'f4a497e8-91ca-4773-ab0d-db96380d98b3', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (625, 1054, N'f4a497e8-91ca-4773-ab0d-db96380d98b3', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (626, 1054, N'f4a497e8-91ca-4773-ab0d-db96380d98b3', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (627, 1054, N'f4a497e8-91ca-4773-ab0d-db96380d98b3', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (629, 1054, N'f4a497e8-91ca-4773-ab0d-db96380d98b3', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"#","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"#","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"#","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"#","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"#","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (631, 1054, N'efe13d8e-fdda-4fbd-9740-6060e40c360e', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (632, 1054, N'efe13d8e-fdda-4fbd-9740-6060e40c360e', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (633, 1054, N'efe13d8e-fdda-4fbd-9740-6060e40c360e', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (634, 1054, N'efe13d8e-fdda-4fbd-9740-6060e40c360e', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (636, 1054, N'efe13d8e-fdda-4fbd-9740-6060e40c360e', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (638, 1054, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (639, 1054, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (640, 1054, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (641, 1054, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (643, 1054, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (645, 1094, N'83ab7492-6606-49e4-a8a4-f039c0e41a85', 54, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (646, 1094, N'83ab7492-6606-49e4-a8a4-f039c0e41a85', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (647, 1094, N'83ab7492-6606-49e4-a8a4-f039c0e41a85', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (648, 1094, N'83ab7492-6606-49e4-a8a4-f039c0e41a85', 57, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (649, 1094, N'83ab7492-6606-49e4-a8a4-f039c0e41a85', 58, NULL, NULL, NULL, NULL)
GO
print 'Processed 600 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (650, 1054, N'8607c611-65b3-444f-9cac-d356a1d9d4e6', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (651, 1076, N'5c78daf4-0f07-4fe7-b025-562ff8a16f85', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (652, 1076, N'5c78daf4-0f07-4fe7-b025-562ff8a16f85', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (653, 1076, N'5c78daf4-0f07-4fe7-b025-562ff8a16f85', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (654, 1076, N'5c78daf4-0f07-4fe7-b025-562ff8a16f85', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (655, 1076, N'5c78daf4-0f07-4fe7-b025-562ff8a16f85', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (656, 1077, N'744e12af-67df-483b-b0a7-d8a3b13f6fc9', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (657, 1077, N'744e12af-67df-483b-b0a7-d8a3b13f6fc9', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (658, 1077, N'744e12af-67df-483b-b0a7-d8a3b13f6fc9', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (659, 1077, N'744e12af-67df-483b-b0a7-d8a3b13f6fc9', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (660, 1077, N'744e12af-67df-483b-b0a7-d8a3b13f6fc9', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (661, 1078, N'828586e1-f01d-434b-9e1f-8875291aedee', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (662, 1078, N'828586e1-f01d-434b-9e1f-8875291aedee', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (663, 1078, N'828586e1-f01d-434b-9e1f-8875291aedee', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (664, 1078, N'828586e1-f01d-434b-9e1f-8875291aedee', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (665, 1078, N'828586e1-f01d-434b-9e1f-8875291aedee', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (666, 1080, N'18930665-5e2e-469e-9420-1d71c1ab45e5', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (667, 1080, N'18930665-5e2e-469e-9420-1d71c1ab45e5', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (668, 1080, N'18930665-5e2e-469e-9420-1d71c1ab45e5', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (669, 1080, N'18930665-5e2e-469e-9420-1d71c1ab45e5', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (670, 1080, N'18930665-5e2e-469e-9420-1d71c1ab45e5', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (671, 1081, N'a32e6396-76d2-4c6d-9881-ccb0f232e642', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (672, 1081, N'a32e6396-76d2-4c6d-9881-ccb0f232e642', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (673, 1081, N'a32e6396-76d2-4c6d-9881-ccb0f232e642', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (674, 1081, N'a32e6396-76d2-4c6d-9881-ccb0f232e642', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (675, 1081, N'a32e6396-76d2-4c6d-9881-ccb0f232e642', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (676, 1082, N'24737ac7-033c-4e8b-910d-13a143023498', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (677, 1082, N'24737ac7-033c-4e8b-910d-13a143023498', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (678, 1082, N'24737ac7-033c-4e8b-910d-13a143023498', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (679, 1082, N'24737ac7-033c-4e8b-910d-13a143023498', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (680, 1082, N'24737ac7-033c-4e8b-910d-13a143023498', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (681, 1054, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (682, 1054, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (683, 1054, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (684, 1054, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (686, 1054, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (688, 1054, N'7cf82dc3-b34e-415d-832c-9164523cd0ee', 59, NULL, NULL, NULL, N'{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (689, 1086, N'99410205-1bb5-4831-9e10-80fdfc419db9', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (690, 1086, N'99410205-1bb5-4831-9e10-80fdfc419db9', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (691, 1086, N'99410205-1bb5-4831-9e10-80fdfc419db9', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (692, 1086, N'99410205-1bb5-4831-9e10-80fdfc419db9', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (693, 1086, N'99410205-1bb5-4831-9e10-80fdfc419db9', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (694, 1087, N'586f94b5-70b1-4366-8666-0a876300e8df', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (695, 1087, N'586f94b5-70b1-4366-8666-0a876300e8df', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (696, 1087, N'586f94b5-70b1-4366-8666-0a876300e8df', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (697, 1087, N'586f94b5-70b1-4366-8666-0a876300e8df', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (698, 1087, N'586f94b5-70b1-4366-8666-0a876300e8df', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (699, 1088, N'06dddcce-e02c-45e8-a991-7d645d651717', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (700, 1088, N'06dddcce-e02c-45e8-a991-7d645d651717', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (701, 1088, N'06dddcce-e02c-45e8-a991-7d645d651717', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (702, 1088, N'06dddcce-e02c-45e8-a991-7d645d651717', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (703, 1088, N'06dddcce-e02c-45e8-a991-7d645d651717', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (704, 1054, N'eb2a7148-33cc-4594-86e4-a564a1e9248a', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (705, 1054, N'eb2a7148-33cc-4594-86e4-a564a1e9248a', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (706, 1054, N'eb2a7148-33cc-4594-86e4-a564a1e9248a', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (707, 1054, N'eb2a7148-33cc-4594-86e4-a564a1e9248a', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (709, 1054, N'eb2a7148-33cc-4594-86e4-a564a1e9248a', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (711, 1054, N'4d4d7a41-3634-49d9-a60f-963346169ef7', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (712, 1054, N'4d4d7a41-3634-49d9-a60f-963346169ef7', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (713, 1054, N'4d4d7a41-3634-49d9-a60f-963346169ef7', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (714, 1054, N'4d4d7a41-3634-49d9-a60f-963346169ef7', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (716, 1054, N'4d4d7a41-3634-49d9-a60f-963346169ef7', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (718, 1054, N'08447b68-0048-46fd-98ba-a74e4ec74e37', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (719, 1054, N'08447b68-0048-46fd-98ba-a74e4ec74e37', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (720, 1054, N'08447b68-0048-46fd-98ba-a74e4ec74e37', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (721, 1054, N'08447b68-0048-46fd-98ba-a74e4ec74e37', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (723, 1054, N'08447b68-0048-46fd-98ba-a74e4ec74e37', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (725, 1054, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (726, 1054, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (727, 1054, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (728, 1054, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (730, 1054, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (732, 1054, N'105a1367-2aa3-4fa2-b7a1-9870c63a5b23', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (733, 1054, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (734, 1054, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (735, 1054, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (736, 1054, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (738, 1054, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (740, 1054, N'8d73e645-2fbe-4b2a-a6f2-93dbba9b0d12', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (741, 1054, N'8239187a-3432-406c-9aa2-37acebf434c1', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (742, 1054, N'8239187a-3432-406c-9aa2-37acebf434c1', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (743, 1054, N'8239187a-3432-406c-9aa2-37acebf434c1', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (744, 1054, N'8239187a-3432-406c-9aa2-37acebf434c1', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (746, 1054, N'8239187a-3432-406c-9aa2-37acebf434c1', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (748, 1054, N'8239187a-3432-406c-9aa2-37acebf434c1', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (749, 1054, N'8d91136a-2149-4114-8801-a36931d71893', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (750, 1054, N'8d91136a-2149-4114-8801-a36931d71893', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (751, 1054, N'8d91136a-2149-4114-8801-a36931d71893', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (752, 1054, N'8d91136a-2149-4114-8801-a36931d71893', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (754, 1054, N'8d91136a-2149-4114-8801-a36931d71893', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-started.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (756, 1054, N'8d91136a-2149-4114-8801-a36931d71893', 59, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (757, 1094, N'9cc864d8-00b5-49d5-90f7-6d748e58ce00', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (758, 1094, N'9cc864d8-00b5-49d5-90f7-6d748e58ce00', 55, NULL, NULL, NULL, N'<p>Test</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (759, 1094, N'9cc864d8-00b5-49d5-90f7-6d748e58ce00', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (760, 1094, N'9cc864d8-00b5-49d5-90f7-6d748e58ce00', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (761, 1094, N'9cc864d8-00b5-49d5-90f7-6d748e58ce00', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (762, 1094, N'07207e71-03d0-40a4-aa79-67eeedbb53fe', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (763, 1094, N'07207e71-03d0-40a4-aa79-67eeedbb53fe', 55, NULL, NULL, NULL, N'
    <p>Test New content!</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (764, 1094, N'07207e71-03d0-40a4-aa79-67eeedbb53fe', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (765, 1094, N'07207e71-03d0-40a4-aa79-67eeedbb53fe', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (766, 1094, N'07207e71-03d0-40a4-aa79-67eeedbb53fe', 58, NULL, NULL, N'24', NULL)
GO
print 'Processed 700 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (767, 1115, N'39dea376-f3a0-4534-9b9a-dfd5d71dc310', 66, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (768, 1115, N'39dea376-f3a0-4534-9b9a-dfd5d71dc310', 67, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (769, 1115, N'39dea376-f3a0-4534-9b9a-dfd5d71dc310', 68, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (770, 1115, N'39dea376-f3a0-4534-9b9a-dfd5d71dc310', 73, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (771, 1115, N'7b0b11e6-04a6-4ab2-97ea-c8ba58d75de6', 66, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (772, 1115, N'7b0b11e6-04a6-4ab2-97ea-c8ba58d75de6', 67, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (773, 1115, N'7b0b11e6-04a6-4ab2-97ea-c8ba58d75de6', 68, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (774, 1115, N'7b0b11e6-04a6-4ab2-97ea-c8ba58d75de6', 73, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (775, 1115, N'8c9a8b62-8f75-4a57-b139-5b0e40708cf5', 66, NULL, NULL, N'Title', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (776, 1115, N'8c9a8b62-8f75-4a57-b139-5b0e40708cf5', 67, NULL, NULL, NULL, N'{"Title":"CTA1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (777, 1115, N'8c9a8b62-8f75-4a57-b139-5b0e40708cf5', 68, NULL, NULL, NULL, N'{"Title":"CTA2","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (778, 1115, N'8c9a8b62-8f75-4a57-b139-5b0e40708cf5', 73, NULL, NULL, NULL, N'28')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (779, 1115, N'9edbbd77-d914-4cba-81a8-598d25bf2211', 66, NULL, NULL, N'Title', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (780, 1115, N'9edbbd77-d914-4cba-81a8-598d25bf2211', 67, NULL, NULL, NULL, N'{"Title":"CTA1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (781, 1115, N'9edbbd77-d914-4cba-81a8-598d25bf2211', 68, NULL, NULL, NULL, N'{"Title":"CTA2","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (782, 1115, N'9edbbd77-d914-4cba-81a8-598d25bf2211', 73, NULL, NULL, NULL, N'28')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (783, 1116, N'd7e4d761-5229-48f8-a970-d8091e888609', 63, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (784, 1116, N'd7e4d761-5229-48f8-a970-d8091e888609', 64, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (785, 1116, N'd7e4d761-5229-48f8-a970-d8091e888609', 65, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (786, 1116, N'b9d11cbe-88a6-40c6-88cc-faa818c08b7d', 63, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (787, 1116, N'b9d11cbe-88a6-40c6-88cc-faa818c08b7d', 64, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (788, 1116, N'b9d11cbe-88a6-40c6-88cc-faa818c08b7d', 65, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (789, 1117, N'd5af004f-ca6d-4961-aba5-2059178be2a1', 69, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (790, 1117, N'd5af004f-ca6d-4961-aba5-2059178be2a1', 70, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (791, 1117, N'd5af004f-ca6d-4961-aba5-2059178be2a1', 71, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (792, 1117, N'd5af004f-ca6d-4961-aba5-2059178be2a1', 72, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (793, 1117, N'd5af004f-ca6d-4961-aba5-2059178be2a1', 74, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (794, 1117, N'7c6462c1-86e7-4615-8668-72a3f04d2081', 69, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (795, 1117, N'7c6462c1-86e7-4615-8668-72a3f04d2081', 70, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (796, 1117, N'7c6462c1-86e7-4615-8668-72a3f04d2081', 71, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (797, 1117, N'7c6462c1-86e7-4615-8668-72a3f04d2081', 72, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (798, 1117, N'7c6462c1-86e7-4615-8668-72a3f04d2081', 74, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (799, 1118, N'7eb2642b-0131-4814-9387-ddc87f4838c4', 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (800, 1118, N'7eb2642b-0131-4814-9387-ddc87f4838c4', 61, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (801, 1118, N'7eb2642b-0131-4814-9387-ddc87f4838c4', 62, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (802, 1118, N'adabe667-c1ac-4267-b8e9-831c6d6901c3', 60, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (803, 1118, N'adabe667-c1ac-4267-b8e9-831c6d6901c3', 61, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (804, 1118, N'adabe667-c1ac-4267-b8e9-831c6d6901c3', 62, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (805, 1116, N'a352df75-b91f-4c04-84e2-197309c6fa3c', 63, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (806, 1116, N'a352df75-b91f-4c04-84e2-197309c6fa3c', 64, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (807, 1116, N'a352df75-b91f-4c04-84e2-197309c6fa3c', 65, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (808, 1117, N'3f925ef2-ea2e-4be9-bb90-15126483dd90', 69, NULL, NULL, N'Home Page Section Title', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (809, 1117, N'3f925ef2-ea2e-4be9-bb90-15126483dd90', 70, NULL, NULL, NULL, N'{"Title":"CTA Link 1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (810, 1117, N'3f925ef2-ea2e-4be9-bb90-15126483dd90', 71, NULL, NULL, NULL, N'{"Title":"CTA Link 2","Mode":1,"NodeId":null,"Url":"http://www.google.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (811, 1117, N'3f925ef2-ea2e-4be9-bb90-15126483dd90', 72, NULL, NULL, NULL, N'<p>Lorem ipsum.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (812, 1117, N'3f925ef2-ea2e-4be9-bb90-15126483dd90', 74, NULL, NULL, NULL, N'28')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (813, 1094, N'bc77814c-1a04-4ff5-9ad3-e097facb7b23', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (814, 1094, N'bc77814c-1a04-4ff5-9ad3-e097facb7b23', 55, NULL, NULL, NULL, N'
    <p>Test New content!</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (815, 1094, N'bc77814c-1a04-4ff5-9ad3-e097facb7b23', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (816, 1094, N'bc77814c-1a04-4ff5-9ad3-e097facb7b23', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (817, 1094, N'bc77814c-1a04-4ff5-9ad3-e097facb7b23', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (818, 1116, N'36dcc88a-304a-4ba1-a9ad-19a4dd2380ef', 63, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (819, 1116, N'36dcc88a-304a-4ba1-a9ad-19a4dd2380ef', 64, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (820, 1116, N'36dcc88a-304a-4ba1-a9ad-19a4dd2380ef', 65, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (821, 1117, N'16b78d42-cb65-4a53-808c-bc53968f303b', 69, NULL, NULL, N'Home Page Section Title', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (822, 1117, N'16b78d42-cb65-4a53-808c-bc53968f303b', 70, NULL, NULL, NULL, N'{"Title":"CTA Link 1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (823, 1117, N'16b78d42-cb65-4a53-808c-bc53968f303b', 71, NULL, NULL, NULL, N'{"Title":"CTA Link 2","Mode":1,"NodeId":null,"Url":"http://www.google.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (824, 1117, N'16b78d42-cb65-4a53-808c-bc53968f303b', 72, NULL, NULL, NULL, N'<p>Lorem ipsum.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (825, 1117, N'16b78d42-cb65-4a53-808c-bc53968f303b', 74, NULL, NULL, NULL, N'28')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (826, 1118, N'45583017-fc24-42fb-a79e-cf4925af25b3', 60, NULL, NULL, N'Pull Quote Header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (827, 1118, N'45583017-fc24-42fb-a79e-cf4925af25b3', 61, NULL, NULL, NULL, N'Lorem ipsum.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (828, 1118, N'45583017-fc24-42fb-a79e-cf4925af25b3', 62, NULL, NULL, N'Ghandi', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (829, 1118, N'84fa2d33-0a8f-433a-9c25-2f20a30adb4e', 60, NULL, NULL, N'Pull Quote Header', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (830, 1118, N'84fa2d33-0a8f-433a-9c25-2f20a30adb4e', 61, NULL, NULL, NULL, N'Lorem ipsum.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (831, 1118, N'84fa2d33-0a8f-433a-9c25-2f20a30adb4e', 62, NULL, NULL, N'Ghandi', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (832, 1094, N'd23b5633-a300-40ba-b0a1-eb1ce0eccdc3', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (833, 1094, N'd23b5633-a300-40ba-b0a1-eb1ce0eccdc3', 55, NULL, NULL, NULL, N'
        
    <p>Test New content!</p><p>Adding more lines!</p><p>Okay!</p>

    ')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (834, 1094, N'd23b5633-a300-40ba-b0a1-eb1ce0eccdc3', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (835, 1094, N'd23b5633-a300-40ba-b0a1-eb1ce0eccdc3', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (836, 1094, N'd23b5633-a300-40ba-b0a1-eb1ce0eccdc3', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (837, 1115, N'73ed39d3-f093-454b-b60e-518a77d53e64', 66, NULL, NULL, N'Title', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (838, 1115, N'73ed39d3-f093-454b-b60e-518a77d53e64', 67, NULL, NULL, NULL, N'{"Title":"CTA1","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (839, 1115, N'73ed39d3-f093-454b-b60e-518a77d53e64', 68, NULL, NULL, NULL, N'{"Title":"CTA2","Mode":1,"NodeId":null,"Url":"http://www.espn.com","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (840, 1115, N'73ed39d3-f093-454b-b60e-518a77d53e64', 73, NULL, NULL, NULL, N'28')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (841, 1094, N'bd541b2a-67ce-488a-9792-9eee7ddb83e0', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (842, 1094, N'bd541b2a-67ce-488a-9792-9eee7ddb83e0', 55, NULL, NULL, NULL, N'
        <p>Test</p><p>another</p><p>test</p>
    ')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (843, 1094, N'bd541b2a-67ce-488a-9792-9eee7ddb83e0', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (844, 1094, N'bd541b2a-67ce-488a-9792-9eee7ddb83e0', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (845, 1094, N'bd541b2a-67ce-488a-9792-9eee7ddb83e0', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (846, 1054, N'8266cf9a-b72c-46a0-bc06-416f4304296a', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (847, 1054, N'8266cf9a-b72c-46a0-bc06-416f4304296a', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (848, 1054, N'8266cf9a-b72c-46a0-bc06-416f4304296a', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (849, 1054, N'8266cf9a-b72c-46a0-bc06-416f4304296a', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (851, 1054, N'8266cf9a-b72c-46a0-bc06-416f4304296a', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (853, 1054, N'8266cf9a-b72c-46a0-bc06-416f4304296a', 59, NULL, NULL, NULL, N'{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (854, 1054, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (855, 1054, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (856, 1054, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (857, 1054, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (859, 1054, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false},{"Title":"About US","Mode":2,"NodeId":1065,"Url":"/about-us.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (861, 1054, N'f5dc50bf-ba75-4448-a345-5f7c4b3bc301', 59, NULL, NULL, NULL, N'{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (862, 1069, N'd869e49c-d785-453e-8fad-13a75493162b', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (863, 1069, N'd869e49c-d785-453e-8fad-13a75493162b', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (864, 1069, N'd869e49c-d785-453e-8fad-13a75493162b', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (865, 1069, N'd869e49c-d785-453e-8fad-13a75493162b', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (866, 1069, N'd869e49c-d785-453e-8fad-13a75493162b', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (867, 1082, N'333da0ac-714e-4d7b-9b98-59282997e2db', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (868, 1082, N'333da0ac-714e-4d7b-9b98-59282997e2db', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (869, 1082, N'333da0ac-714e-4d7b-9b98-59282997e2db', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (870, 1082, N'333da0ac-714e-4d7b-9b98-59282997e2db', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (871, 1082, N'333da0ac-714e-4d7b-9b98-59282997e2db', 34, NULL, NULL, NULL, N'')
GO
print 'Processed 800 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (872, 1081, N'39eafedc-46c4-4617-b108-52a38074be37', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (873, 1081, N'39eafedc-46c4-4617-b108-52a38074be37', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (874, 1081, N'39eafedc-46c4-4617-b108-52a38074be37', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (875, 1081, N'39eafedc-46c4-4617-b108-52a38074be37', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (876, 1081, N'39eafedc-46c4-4617-b108-52a38074be37', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (877, 1067, N'7456490d-713b-4867-a8c4-eafd1a89d6d5', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (878, 1067, N'7456490d-713b-4867-a8c4-eafd1a89d6d5', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (879, 1067, N'7456490d-713b-4867-a8c4-eafd1a89d6d5', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (880, 1067, N'7456490d-713b-4867-a8c4-eafd1a89d6d5', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (881, 1067, N'7456490d-713b-4867-a8c4-eafd1a89d6d5', 34, NULL, NULL, NULL, N'<p>Nominate!</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (882, 1091, N'e6d86568-3e52-4239-a0b0-d7d341d0009c', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (883, 1091, N'e6d86568-3e52-4239-a0b0-d7d341d0009c', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (884, 1091, N'e6d86568-3e52-4239-a0b0-d7d341d0009c', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (885, 1091, N'e6d86568-3e52-4239-a0b0-d7d341d0009c', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (886, 1091, N'e6d86568-3e52-4239-a0b0-d7d341d0009c', 53, NULL, NULL, NULL, N'{"Title":"Submit a Garden","Mode":1,"NodeId":null,"Url":"https://www.metroblooms.org/nominate.php","NewWindow":false}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (887, 1085, N'fc185468-522e-4acb-bf3c-dfee751bfa83', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (888, 1085, N'fc185468-522e-4acb-bf3c-dfee751bfa83', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (889, 1085, N'fc185468-522e-4acb-bf3c-dfee751bfa83', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (890, 1085, N'fc185468-522e-4acb-bf3c-dfee751bfa83', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (891, 1085, N'fc185468-522e-4acb-bf3c-dfee751bfa83', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (892, 1068, N'd4d2cfc9-978c-4a21-abab-7b58b3e391e6', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (893, 1068, N'd4d2cfc9-978c-4a21-abab-7b58b3e391e6', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (894, 1068, N'd4d2cfc9-978c-4a21-abab-7b58b3e391e6', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (895, 1068, N'd4d2cfc9-978c-4a21-abab-7b58b3e391e6', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (896, 1068, N'd4d2cfc9-978c-4a21-abab-7b58b3e391e6', 34, NULL, NULL, NULL, N'<p>Evaluate your garden here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (897, 1088, N'45d80349-d6d9-4b75-9c98-b170adddfd7c', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (898, 1088, N'45d80349-d6d9-4b75-9c98-b170adddfd7c', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (899, 1088, N'45d80349-d6d9-4b75-9c98-b170adddfd7c', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (900, 1088, N'45d80349-d6d9-4b75-9c98-b170adddfd7c', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (901, 1088, N'45d80349-d6d9-4b75-9c98-b170adddfd7c', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (902, 1087, N'bf53ee50-c556-4848-b5d6-532b94b1ed42', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (903, 1087, N'bf53ee50-c556-4848-b5d6-532b94b1ed42', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (904, 1087, N'bf53ee50-c556-4848-b5d6-532b94b1ed42', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (905, 1087, N'bf53ee50-c556-4848-b5d6-532b94b1ed42', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (906, 1087, N'bf53ee50-c556-4848-b5d6-532b94b1ed42', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (907, 1086, N'19c74e5a-35cb-4f94-a905-2ad73ae5a8f2', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (908, 1086, N'19c74e5a-35cb-4f94-a905-2ad73ae5a8f2', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (909, 1086, N'19c74e5a-35cb-4f94-a905-2ad73ae5a8f2', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (910, 1086, N'19c74e5a-35cb-4f94-a905-2ad73ae5a8f2', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (911, 1086, N'19c74e5a-35cb-4f94-a905-2ad73ae5a8f2', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (912, 1066, N'000e2e49-b40e-44a7-9416-02826949ef82', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (913, 1066, N'000e2e49-b40e-44a7-9416-02826949ef82', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (914, 1066, N'000e2e49-b40e-44a7-9416-02826949ef82', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (915, 1066, N'000e2e49-b40e-44a7-9416-02826949ef82', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (916, 1066, N'000e2e49-b40e-44a7-9416-02826949ef82', 34, NULL, NULL, NULL, N'<p>Getting started content</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (917, 1065, N'4774f0d0-3bba-49e5-8c27-aa2aa2c1d7d3', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (918, 1065, N'4774f0d0-3bba-49e5-8c27-aa2aa2c1d7d3', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (919, 1065, N'4774f0d0-3bba-49e5-8c27-aa2aa2c1d7d3', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (920, 1065, N'4774f0d0-3bba-49e5-8c27-aa2aa2c1d7d3', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (921, 1065, N'4774f0d0-3bba-49e5-8c27-aa2aa2c1d7d3', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (922, 1080, N'a366970e-8785-4761-80de-680f06cf35e4', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (923, 1080, N'a366970e-8785-4761-80de-680f06cf35e4', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (924, 1080, N'a366970e-8785-4761-80de-680f06cf35e4', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (925, 1080, N'a366970e-8785-4761-80de-680f06cf35e4', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (926, 1080, N'a366970e-8785-4761-80de-680f06cf35e4', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (927, 1078, N'9a0a54d3-1029-4f8d-ae72-8c82a1892dec', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (928, 1078, N'9a0a54d3-1029-4f8d-ae72-8c82a1892dec', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (929, 1078, N'9a0a54d3-1029-4f8d-ae72-8c82a1892dec', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (930, 1078, N'9a0a54d3-1029-4f8d-ae72-8c82a1892dec', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (931, 1078, N'9a0a54d3-1029-4f8d-ae72-8c82a1892dec', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (932, 1077, N'c0dc39ae-4311-4225-888e-3c2209c7e28e', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (933, 1077, N'c0dc39ae-4311-4225-888e-3c2209c7e28e', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (934, 1077, N'c0dc39ae-4311-4225-888e-3c2209c7e28e', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (935, 1077, N'c0dc39ae-4311-4225-888e-3c2209c7e28e', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (936, 1077, N'c0dc39ae-4311-4225-888e-3c2209c7e28e', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (937, 1076, N'6fa81a28-70ef-4ac1-8752-060702cea736', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (938, 1076, N'6fa81a28-70ef-4ac1-8752-060702cea736', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (939, 1076, N'6fa81a28-70ef-4ac1-8752-060702cea736', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (940, 1076, N'6fa81a28-70ef-4ac1-8752-060702cea736', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (941, 1076, N'6fa81a28-70ef-4ac1-8752-060702cea736', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (942, 1094, N'9db668a5-6ab4-438f-a811-88183abf9507', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (943, 1094, N'9db668a5-6ab4-438f-a811-88183abf9507', 55, NULL, NULL, NULL, N'
        <p>Test</p><p>another</p><p>test</p>
    ')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (944, 1094, N'9db668a5-6ab4-438f-a811-88183abf9507', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (945, 1094, N'9db668a5-6ab4-438f-a811-88183abf9507', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (946, 1094, N'9db668a5-6ab4-438f-a811-88183abf9507', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (947, 1119, N'8a51613a-1e0f-4a09-8349-7de0ad5610c7', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (948, 1119, N'8a51613a-1e0f-4a09-8349-7de0ad5610c7', 55, NULL, NULL, NULL, N'
        <p>Test</p><p>another</p><p>test</p>
    ')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (949, 1119, N'8a51613a-1e0f-4a09-8349-7de0ad5610c7', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (950, 1119, N'8a51613a-1e0f-4a09-8349-7de0ad5610c7', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (951, 1119, N'8a51613a-1e0f-4a09-8349-7de0ad5610c7', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (952, 1119, N'cbff34f9-c7de-4a60-9b0b-d080a7ad22f4', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (953, 1119, N'cbff34f9-c7de-4a60-9b0b-d080a7ad22f4', 55, NULL, NULL, NULL, N'<p>Test</p>
<p>another</p>
<p>test</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (954, 1119, N'cbff34f9-c7de-4a60-9b0b-d080a7ad22f4', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (955, 1119, N'cbff34f9-c7de-4a60-9b0b-d080a7ad22f4', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (956, 1119, N'cbff34f9-c7de-4a60-9b0b-d080a7ad22f4', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (957, 1121, N'8619d616-abe7-452f-983a-899e6e479e9b', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (958, 1121, N'8619d616-abe7-452f-983a-899e6e479e9b', 55, NULL, NULL, NULL, N'<p>Test</p>
<p>another</p>
<p>test</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (959, 1121, N'8619d616-abe7-452f-983a-899e6e479e9b', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (960, 1121, N'8619d616-abe7-452f-983a-899e6e479e9b', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (961, 1121, N'8619d616-abe7-452f-983a-899e6e479e9b', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (962, 1094, N'8e2b3270-4cde-4aae-b784-dd363af82c97', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (963, 1094, N'8e2b3270-4cde-4aae-b784-dd363af82c97', 55, NULL, NULL, NULL, N'<p>Test</p>
<p>another</p>
<p>test</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (964, 1094, N'8e2b3270-4cde-4aae-b784-dd363af82c97', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (965, 1094, N'8e2b3270-4cde-4aae-b784-dd363af82c97', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (966, 1094, N'8e2b3270-4cde-4aae-b784-dd363af82c97', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (967, 1094, N'f46771dc-fdb6-4f11-b142-0fb5f3f96dc9', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (968, 1094, N'f46771dc-fdb6-4f11-b142-0fb5f3f96dc9', 55, NULL, NULL, NULL, N'<p>Test</p>
<p>another</p>
<p>test</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (969, 1094, N'f46771dc-fdb6-4f11-b142-0fb5f3f96dc9', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (970, 1094, N'f46771dc-fdb6-4f11-b142-0fb5f3f96dc9', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (971, 1094, N'f46771dc-fdb6-4f11-b142-0fb5f3f96dc9', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (972, 1122, N'18f74886-2641-4a0f-b040-77016267b70f', 75, NULL, NULL, NULL, NULL)
GO
print 'Processed 900 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (973, 1122, N'18f74886-2641-4a0f-b040-77016267b70f', 76, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (974, 1122, N'd8d31c0f-fe16-403e-a0c8-117cec23ee42', 75, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (975, 1122, N'd8d31c0f-fe16-403e-a0c8-117cec23ee42', 76, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (976, 1122, N'f9adb43e-0e40-405d-bd23-829274b0c9cc', 75, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (977, 1122, N'f9adb43e-0e40-405d-bd23-829274b0c9cc', 76, NULL, NULL, NULL, N'<p>Rich Text - text</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (978, 1121, N'b763de81-6cc4-481e-9c15-de1d0ee54640', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (979, 1121, N'b763de81-6cc4-481e-9c15-de1d0ee54640', 55, NULL, NULL, NULL, N'<p>Test</p>
<p>another</p>
<p>test</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (980, 1121, N'b763de81-6cc4-481e-9c15-de1d0ee54640', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (981, 1121, N'b763de81-6cc4-481e-9c15-de1d0ee54640', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (982, 1121, N'b763de81-6cc4-481e-9c15-de1d0ee54640', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (983, 1069, N'a5fb736b-9fc5-485a-a95b-d2b1317089b7', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (984, 1069, N'a5fb736b-9fc5-485a-a95b-d2b1317089b7', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (985, 1069, N'a5fb736b-9fc5-485a-a95b-d2b1317089b7', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (986, 1069, N'a5fb736b-9fc5-485a-a95b-d2b1317089b7', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (987, 1069, N'a5fb736b-9fc5-485a-a95b-d2b1317089b7', 34, NULL, NULL, NULL, N'<p>Learn content here</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (988, 1122, N'c8f0e9cf-263f-4372-ade6-91f0f5ebf7ce', 75, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (989, 1122, N'c8f0e9cf-263f-4372-ade6-91f0f5ebf7ce', 76, NULL, NULL, NULL, N'<p>Rich Text - text</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (990, 1121, N'9385456d-b14a-43a0-b7c8-1a53fc5c94f3', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (991, 1121, N'9385456d-b14a-43a0-b7c8-1a53fc5c94f3', 55, NULL, NULL, NULL, N'
        <p>Test</p>
    ')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (992, 1121, N'9385456d-b14a-43a0-b7c8-1a53fc5c94f3', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (993, 1121, N'9385456d-b14a-43a0-b7c8-1a53fc5c94f3', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (994, 1121, N'9385456d-b14a-43a0-b7c8-1a53fc5c94f3', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (995, 1123, N'209f7a0e-f9e2-4e2b-83e7-fc092d501fb2', 75, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (996, 1123, N'209f7a0e-f9e2-4e2b-83e7-fc092d501fb2', 76, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (997, 1123, N'2733fbde-e2d3-4f3e-94a8-c3a575f68f9f', 75, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (998, 1123, N'2733fbde-e2d3-4f3e-94a8-c3a575f68f9f', 76, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (999, 1123, N'afc3ec37-a91e-4470-836f-98ba89095190', 75, NULL, NULL, N'Rich Text Section', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1000, 1123, N'afc3ec37-a91e-4470-836f-98ba89095190', 76, NULL, NULL, NULL, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras volutpat aliquet est, sed sollicitudin purus tincidunt volutpat. Suspendisse in tristique lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin et ultricies sem, at dictum lorem. Integer et felis iaculis, semper libero sed, imperdiet ipsum. Mauris iaculis sodales augue sed viverra. Mauris diam metus, volutpat facilisis malesuada vel, fermentum ac neque.</p>
<p>Morbi volutpat nibh vel magna varius viverra. Fusce ac nisi nisl. Etiam viverra adipiscing ligula, vitae sagittis turpis fringilla accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut diam ligula, ornare sit amet ullamcorper eget, vehicula at risus. Maecenas id enim purus. Morbi elementum, dui non luctus vehicula, augue justo lacinia diam, a hendrerit tellus tortor ac sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus urna sem, vehicula a est id, dignissim tempus mi. Donec justo enim, fringilla et tellus in, porta tristique tellus. Sed nisl odio, molestie sagittis dolor at, porttitor tempus massa. Donec condimentum tellus lacus, eget interdum metus euismod et. Phasellus eu leo sed nisi lacinia fermentum.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1001, 1123, N'7d00fdf5-e0b4-4573-bd4a-38d6ec845f4d', 75, NULL, NULL, N'Rich Text Section', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1002, 1123, N'7d00fdf5-e0b4-4573-bd4a-38d6ec845f4d', 76, NULL, NULL, NULL, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras volutpat aliquet est, sed sollicitudin purus tincidunt volutpat. Suspendisse in tristique lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin et ultricies sem, at dictum lorem. Integer et felis iaculis, semper libero sed, imperdiet ipsum. Mauris iaculis sodales augue sed viverra. Mauris diam metus, volutpat facilisis malesuada vel, fermentum ac neque.</p>
<p>Morbi volutpat nibh vel magna varius viverra. Fusce ac nisi nisl. Etiam viverra adipiscing ligula, vitae sagittis turpis fringilla accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut diam ligula, ornare sit amet ullamcorper eget, vehicula at risus. Maecenas id enim purus. Morbi elementum, dui non luctus vehicula, augue justo lacinia diam, a hendrerit tellus tortor ac sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus urna sem, vehicula a est id, dignissim tempus mi. Donec justo enim, fringilla et tellus in, porta tristique tellus. Sed nisl odio, molestie sagittis dolor at, porttitor tempus massa. Donec condimentum tellus lacus, eget interdum metus euismod et. Phasellus eu leo sed nisi lacinia fermentum.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1003, 1121, N'd98ecab4-7923-4b24-b0d6-cf685e084f01', 54, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1004, 1121, N'd98ecab4-7923-4b24-b0d6-cf685e084f01', 55, NULL, NULL, NULL, N'
        <p>Test</p>
    ')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1005, 1121, N'd98ecab4-7923-4b24-b0d6-cf685e084f01', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1006, 1121, N'd98ecab4-7923-4b24-b0d6-cf685e084f01', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1007, 1121, N'd98ecab4-7923-4b24-b0d6-cf685e084f01', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1008, 1124, N'211dee2f-92e2-4406-98e7-69ea46fa6d16', 54, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1009, 1124, N'211dee2f-92e2-4406-98e7-69ea46fa6d16', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1010, 1124, N'211dee2f-92e2-4406-98e7-69ea46fa6d16', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1011, 1124, N'211dee2f-92e2-4406-98e7-69ea46fa6d16', 57, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1012, 1124, N'211dee2f-92e2-4406-98e7-69ea46fa6d16', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1013, 1124, N'023b9399-255d-45b0-a0de-1d634d17129a', 54, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1014, 1124, N'023b9399-255d-45b0-a0de-1d634d17129a', 55, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1015, 1124, N'023b9399-255d-45b0-a0de-1d634d17129a', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1016, 1124, N'023b9399-255d-45b0-a0de-1d634d17129a', 57, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1017, 1124, N'023b9399-255d-45b0-a0de-1d634d17129a', 58, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1018, 1124, N'6812337f-cc91-4c3e-be5c-3050596083d4', 54, NULL, NULL, N'Image RIght', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1019, 1124, N'6812337f-cc91-4c3e-be5c-3050596083d4', 55, NULL, NULL, NULL, N'<p>Nunc ultrices congue metus sed egestas. Aliquam metus mauris, pharetra quis placerat at, euismod a nulla. Nam tortor quam, blandit in mattis sed, pulvinar ac augue. Curabitur tincidunt, ipsum vitae suscipit aliquet, arcu arcu molestie turpis, ac blandit ante urna bibendum purus. Suspendisse justo erat, blandit non nisi a, adipiscing vestibulum lectus. Nunc tempor nisl eget tincidunt ultrices. Donec sit amet libero eget neque aliquam hendrerit. Pellentesque id ligula mollis, condimentum purus et, euismod turpis. Sed eu velit at urna pulvinar posuere. Vivamus vel turpis ante. Praesent non sollicitudin elit, at tempus ligula. Quisque ut felis vitae metus placerat semper. Integer varius auctor neque, ut ultrices purus. In est ante, interdum quis adipiscing nec, tristique eget sem.</p>
<p>Donec nec volutpat odio. Sed congue at</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1020, 1124, N'6812337f-cc91-4c3e-be5c-3050596083d4', 56, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1021, 1124, N'6812337f-cc91-4c3e-be5c-3050596083d4', 57, NULL, NULL, N'22', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1022, 1124, N'6812337f-cc91-4c3e-be5c-3050596083d4', 58, NULL, NULL, N'24', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1023, 1125, N'6368b073-9120-4203-b4b9-e8411943608e', 60, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1024, 1125, N'6368b073-9120-4203-b4b9-e8411943608e', 61, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1025, 1125, N'6368b073-9120-4203-b4b9-e8411943608e', 62, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1026, 1125, N'efc803f0-1ebd-47f4-b18c-afd9263f4c6d', 60, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1027, 1125, N'efc803f0-1ebd-47f4-b18c-afd9263f4c6d', 61, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1028, 1125, N'efc803f0-1ebd-47f4-b18c-afd9263f4c6d', 62, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1029, 1125, N'4be50b7b-e5d0-4019-a530-25a5a0aa927d', 60, NULL, NULL, N'Resharper', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1030, 1125, N'4be50b7b-e5d0-4019-a530-25a5a0aa927d', 61, NULL, NULL, NULL, N'Use Resharper')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1031, 1125, N'4be50b7b-e5d0-4019-a530-25a5a0aa927d', 62, NULL, NULL, N'David Ly', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1032, 1126, N'b50259fa-6455-4976-a12f-930913d5b336', 63, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1033, 1126, N'b50259fa-6455-4976-a12f-930913d5b336', 64, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1034, 1126, N'b50259fa-6455-4976-a12f-930913d5b336', 65, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1035, 1126, N'd19cbd4f-46e5-4c4d-8033-aeef2225ec14', 63, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1036, 1126, N'd19cbd4f-46e5-4c4d-8033-aeef2225ec14', 64, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1037, 1126, N'd19cbd4f-46e5-4c4d-8033-aeef2225ec14', 65, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1038, 1126, N'c6361add-ef1a-4d82-b9b3-e7971c9b5f56', 63, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1039, 1126, N'c6361add-ef1a-4d82-b9b3-e7971c9b5f56', 64, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1040, 1126, N'c6361add-ef1a-4d82-b9b3-e7971c9b5f56', 65, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1041, 1127, N'07c11df7-aa4e-4561-b130-e7f464a0c9de', 63, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1042, 1127, N'07c11df7-aa4e-4561-b130-e7f464a0c9de', 64, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1043, 1127, N'07c11df7-aa4e-4561-b130-e7f464a0c9de', 65, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1044, 1127, N'3b261c21-cd45-4840-845d-de53a90c8b93', 63, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1045, 1127, N'3b261c21-cd45-4840-845d-de53a90c8b93', 64, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1046, 1127, N'3b261c21-cd45-4840-845d-de53a90c8b93', 65, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1047, 1127, N'13cd5dbc-088f-4ccf-8ed7-4ae0e285d52a', 63, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1048, 1127, N'13cd5dbc-088f-4ccf-8ed7-4ae0e285d52a', 64, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1049, 1127, N'13cd5dbc-088f-4ccf-8ed7-4ae0e285d52a', 65, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1050, 1127, N'fc0b338d-0e81-4593-a52a-4b8b2ce81536', 63, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1051, 1127, N'fc0b338d-0e81-4593-a52a-4b8b2ce81536', 64, 1071, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1052, 1127, N'fc0b338d-0e81-4593-a52a-4b8b2ce81536', 65, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1053, 1054, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', 30, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1054, 1054, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', 31, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1055, 1054, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', 32, NULL, NULL, N'Metro Bloom', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1056, 1054, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1057, 1054, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', 33, NULL, NULL, NULL, N'{"Items":[{"Title":"Learn About Raingardens","Mode":2,"NodeId":1069,"Url":"/learn-about-raingardens.aspx","NewWindow":false},{"Title":"Get Started","Mode":2,"NodeId":1066,"Url":"/get-involved.aspx","NewWindow":false},{"Title":"Nominate a Garden","Mode":2,"NodeId":1067,"Url":"/nominate-a-garden.aspx","NewWindow":false},{"Title":"Evaluate a Garden","Mode":2,"NodeId":1068,"Url":"/evaluate-your-garden.aspx","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1058, 1054, N'8142c112-2bc3-4ddb-b9f0-1da49a85be0f', 59, NULL, NULL, NULL, N'{"Items":[{"Title":"Upcoming Events","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"About Us","Mode":1,"NodeId":null,"Url":"#","NewWindow":false},{"Title":"Sign In","Mode":1,"NodeId":null,"Url":"#","NewWindow":false}]}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1059, 1077, N'038f4991-1984-48e5-afc3-6a967ac79020', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1060, 1077, N'038f4991-1984-48e5-afc3-6a967ac79020', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1061, 1077, N'038f4991-1984-48e5-afc3-6a967ac79020', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1062, 1077, N'038f4991-1984-48e5-afc3-6a967ac79020', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1063, 1077, N'038f4991-1984-48e5-afc3-6a967ac79020', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1064, 1078, N'dd8f92e2-b586-4aad-b4ac-492a333ebe0d', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1065, 1078, N'dd8f92e2-b586-4aad-b4ac-492a333ebe0d', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1066, 1078, N'dd8f92e2-b586-4aad-b4ac-492a333ebe0d', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1067, 1078, N'dd8f92e2-b586-4aad-b4ac-492a333ebe0d', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1068, 1078, N'dd8f92e2-b586-4aad-b4ac-492a333ebe0d', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1069, 1060, N'5b937dfd-f00a-43f3-9346-475270afa100', 79, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1070, 1128, N'7afc11f8-6aac-47e8-89d3-aee551cd5c7e', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1071, 1128, N'7afc11f8-6aac-47e8-89d3-aee551cd5c7e', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1072, 1128, N'7afc11f8-6aac-47e8-89d3-aee551cd5c7e', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1073, 1128, N'7afc11f8-6aac-47e8-89d3-aee551cd5c7e', 37, NULL, NULL, NULL, NULL)
GO
print 'Processed 1000 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1074, 1128, N'7afc11f8-6aac-47e8-89d3-aee551cd5c7e', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1075, 1128, N'86a84e4e-f6a3-4325-8198-f26d1eb36d05', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1076, 1128, N'86a84e4e-f6a3-4325-8198-f26d1eb36d05', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1077, 1128, N'86a84e4e-f6a3-4325-8198-f26d1eb36d05', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1078, 1128, N'86a84e4e-f6a3-4325-8198-f26d1eb36d05', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1079, 1128, N'86a84e4e-f6a3-4325-8198-f26d1eb36d05', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1080, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 28, 3600, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1081, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 35, NULL, NULL, N'UA-7194683-2', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1082, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 36, NULL, NULL, N'fullstopnet.azurewebsites.net', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1083, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 42, NULL, NULL, N'nerdery', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1084, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 43, NULL, NULL, N'Cha11enge!', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1085, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 46, NULL, NULL, N'Metro Blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1086, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 47, NULL, NULL, N'http://metroblooms-api.azurewebsites.net/api', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1087, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 48, NULL, NULL, N'metro-blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1088, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 49, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1089, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 50, NULL, NULL, N'metro-blooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1090, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 51, NULL, NULL, N'metroblooms', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1091, 1060, N'7a381290-2a63-43d2-a9a1-0c890799ce96', 79, NULL, NULL, N'SectionsFolder', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1092, 1128, N'25ed5290-d2ae-40d6-b1f4-7f407a934656', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1093, 1128, N'25ed5290-d2ae-40d6-b1f4-7f407a934656', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1094, 1128, N'25ed5290-d2ae-40d6-b1f4-7f407a934656', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1095, 1128, N'25ed5290-d2ae-40d6-b1f4-7f407a934656', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1096, 1128, N'25ed5290-d2ae-40d6-b1f4-7f407a934656', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1097, 1076, N'a1505ed9-aa20-4ff3-82f4-11fb6771615d', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1098, 1076, N'a1505ed9-aa20-4ff3-82f4-11fb6771615d', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1099, 1076, N'a1505ed9-aa20-4ff3-82f4-11fb6771615d', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1100, 1076, N'a1505ed9-aa20-4ff3-82f4-11fb6771615d', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1101, 1076, N'a1505ed9-aa20-4ff3-82f4-11fb6771615d', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1102, 1078, N'7b6752a2-22f9-4350-82c0-6febcd1a55f5', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1103, 1078, N'7b6752a2-22f9-4350-82c0-6febcd1a55f5', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1104, 1078, N'7b6752a2-22f9-4350-82c0-6febcd1a55f5', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1105, 1078, N'7b6752a2-22f9-4350-82c0-6febcd1a55f5', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1106, 1078, N'7b6752a2-22f9-4350-82c0-6febcd1a55f5', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1107, 1080, N'eedb72da-0ea4-4d8d-9c69-39cf4562648e', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1108, 1080, N'eedb72da-0ea4-4d8d-9c69-39cf4562648e', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1109, 1080, N'eedb72da-0ea4-4d8d-9c69-39cf4562648e', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1110, 1080, N'eedb72da-0ea4-4d8d-9c69-39cf4562648e', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1111, 1080, N'eedb72da-0ea4-4d8d-9c69-39cf4562648e', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1112, 1129, N'847e7ba8-feb8-4e28-a650-254e3cc5886e', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1113, 1129, N'847e7ba8-feb8-4e28-a650-254e3cc5886e', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1114, 1129, N'847e7ba8-feb8-4e28-a650-254e3cc5886e', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1115, 1129, N'847e7ba8-feb8-4e28-a650-254e3cc5886e', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1116, 1129, N'847e7ba8-feb8-4e28-a650-254e3cc5886e', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1117, 1129, N'4ba1d7c9-82cd-4fbc-80a6-46ee0321773f', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1118, 1129, N'4ba1d7c9-82cd-4fbc-80a6-46ee0321773f', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1119, 1129, N'4ba1d7c9-82cd-4fbc-80a6-46ee0321773f', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1120, 1129, N'4ba1d7c9-82cd-4fbc-80a6-46ee0321773f', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1121, 1129, N'4ba1d7c9-82cd-4fbc-80a6-46ee0321773f', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1122, 1130, N'ced16b35-fb8a-4c8e-9be3-0fce059fc5d3', 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1123, 1130, N'ced16b35-fb8a-4c8e-9be3-0fce059fc5d3', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1124, 1130, N'ced16b35-fb8a-4c8e-9be3-0fce059fc5d3', 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1125, 1130, N'ced16b35-fb8a-4c8e-9be3-0fce059fc5d3', 37, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1126, 1130, N'ced16b35-fb8a-4c8e-9be3-0fce059fc5d3', 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1127, 1130, N'87d9548f-ef50-4ed5-8e50-2a17b9832aaa', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1128, 1130, N'87d9548f-ef50-4ed5-8e50-2a17b9832aaa', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1129, 1130, N'87d9548f-ef50-4ed5-8e50-2a17b9832aaa', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1130, 1130, N'87d9548f-ef50-4ed5-8e50-2a17b9832aaa', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1131, 1130, N'87d9548f-ef50-4ed5-8e50-2a17b9832aaa', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1132, 1129, N'21c994a6-7a0f-4cbc-a336-c1d886f1bb0a', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1133, 1129, N'21c994a6-7a0f-4cbc-a336-c1d886f1bb0a', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1134, 1129, N'21c994a6-7a0f-4cbc-a336-c1d886f1bb0a', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1135, 1129, N'21c994a6-7a0f-4cbc-a336-c1d886f1bb0a', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1136, 1129, N'21c994a6-7a0f-4cbc-a336-c1d886f1bb0a', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1137, 1076, N'7f2aa1c9-7eec-4454-aba5-8294e0c98a54', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1138, 1076, N'7f2aa1c9-7eec-4454-aba5-8294e0c98a54', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1139, 1076, N'7f2aa1c9-7eec-4454-aba5-8294e0c98a54', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1140, 1076, N'7f2aa1c9-7eec-4454-aba5-8294e0c98a54', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1141, 1076, N'7f2aa1c9-7eec-4454-aba5-8294e0c98a54', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1142, 1130, N'fb80be66-045a-46b7-a74a-237f6b15864b', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1143, 1130, N'fb80be66-045a-46b7-a74a-237f6b15864b', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1144, 1130, N'fb80be66-045a-46b7-a74a-237f6b15864b', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1145, 1130, N'fb80be66-045a-46b7-a74a-237f6b15864b', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1146, 1130, N'fb80be66-045a-46b7-a74a-237f6b15864b', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1147, 1080, N'cc057683-168c-4218-98bd-aadb22bf6a09', 30, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1148, 1080, N'cc057683-168c-4218-98bd-aadb22bf6a09', 31, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1149, 1080, N'cc057683-168c-4218-98bd-aadb22bf6a09', 32, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1150, 1080, N'cc057683-168c-4218-98bd-aadb22bf6a09', 37, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1151, 1080, N'cc057683-168c-4218-98bd-aadb22bf6a09', 34, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1152, 1132, N'e867077d-4411-43ec-a89a-4c113b91f424', 54, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1153, 1132, N'e867077d-4411-43ec-a89a-4c113b91f424', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1154, 1132, N'e867077d-4411-43ec-a89a-4c113b91f424', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1155, 1132, N'e867077d-4411-43ec-a89a-4c113b91f424', 57, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1156, 1132, N'e867077d-4411-43ec-a89a-4c113b91f424', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1157, 1132, N'0f4d91b8-b599-44c5-a6c4-311e6bdebe76', 54, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1158, 1132, N'0f4d91b8-b599-44c5-a6c4-311e6bdebe76', 55, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1159, 1132, N'0f4d91b8-b599-44c5-a6c4-311e6bdebe76', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1160, 1132, N'0f4d91b8-b599-44c5-a6c4-311e6bdebe76', 57, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1161, 1132, N'0f4d91b8-b599-44c5-a6c4-311e6bdebe76', 58, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1162, 1132, N'b126e8f1-daed-45be-b756-299199de5781', 54, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1163, 1132, N'b126e8f1-daed-45be-b756-299199de5781', 55, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1164, 1132, N'b126e8f1-daed-45be-b756-299199de5781', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1165, 1132, N'b126e8f1-daed-45be-b756-299199de5781', 57, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1166, 1132, N'b126e8f1-daed-45be-b756-299199de5781', 58, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1167, 1132, N'a92e8c7d-b13f-4e05-8281-c0d902bc071c', 54, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1168, 1132, N'a92e8c7d-b13f-4e05-8281-c0d902bc071c', 55, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1169, 1132, N'a92e8c7d-b13f-4e05-8281-c0d902bc071c', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1170, 1132, N'a92e8c7d-b13f-4e05-8281-c0d902bc071c', 57, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1171, 1132, N'a92e8c7d-b13f-4e05-8281-c0d902bc071c', 58, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1172, 1133, N'06251646-5e8b-4125-9251-c27fe28116fe', 75, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1173, 1133, N'06251646-5e8b-4125-9251-c27fe28116fe', 76, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1174, 1133, N'dd364868-62d7-449e-ba4d-76df95a08400', 75, NULL, NULL, N'', NULL)
GO
print 'Processed 1100 total records'
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1175, 1133, N'dd364868-62d7-449e-ba4d-76df95a08400', 76, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1176, 1134, N'99dc70b6-aae3-4f7a-87ec-525ecc5f366a', 54, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1177, 1134, N'99dc70b6-aae3-4f7a-87ec-525ecc5f366a', 55, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1178, 1134, N'99dc70b6-aae3-4f7a-87ec-525ecc5f366a', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1179, 1134, N'99dc70b6-aae3-4f7a-87ec-525ecc5f366a', 57, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1180, 1134, N'99dc70b6-aae3-4f7a-87ec-525ecc5f366a', 58, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1181, 1134, N'7f37e3c8-aece-478e-8f48-9330f5ce22ae', 54, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1182, 1134, N'7f37e3c8-aece-478e-8f48-9330f5ce22ae', 55, NULL, NULL, NULL, N'')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1183, 1134, N'7f37e3c8-aece-478e-8f48-9330f5ce22ae', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1184, 1134, N'7f37e3c8-aece-478e-8f48-9330f5ce22ae', 57, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1185, 1134, N'7f37e3c8-aece-478e-8f48-9330f5ce22ae', 58, NULL, NULL, N'', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1186, 1133, N'baf1f86d-007e-42cb-9581-6868f8e58be1', 75, NULL, NULL, N'Metro Bloom Mission', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1187, 1133, N'baf1f86d-007e-42cb-9581-6868f8e58be1', 76, NULL, NULL, NULL, N'<p><span><span>Metro Blooms’ mission is to promote and celebrate gardening, to beautify our communities and help heal and protect our environment.</span></span><span> </span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1188, 1134, N'05bedb18-0430-40d6-b48a-9f3841329677', 54, NULL, NULL, N'Our Goals', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1189, 1134, N'05bedb18-0430-40d6-b48a-9f3841329677', 55, NULL, NULL, NULL, N'<p><span><span>We are a private nonprofit volunteer-based educational organization which seeks to partner with other organizations, businesses, professional associations, local governments and watershed districts to promote environmentally sound gardening and landscaping practices to improve the health of our land and water resources.</span></span><span> </span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1190, 1134, N'05bedb18-0430-40d6-b48a-9f3841329677', 56, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1191, 1134, N'05bedb18-0430-40d6-b48a-9f3841329677', 57, NULL, NULL, N'21', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1192, 1134, N'05bedb18-0430-40d6-b48a-9f3841329677', 58, NULL, NULL, N'24', NULL)
SET IDENTITY_INSERT [dbo].[cmsPropertyData] OFF
/****** Object:  Default [DF_cmsMacro_macroUseInEditor]    Script Date: 04/13/2014 01:13:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroUseInEditor]  DEFAULT ('0') FOR [macroUseInEditor]
GO
/****** Object:  Default [DF_cmsMacro_macroRefreshRate]    Script Date: 04/13/2014 01:13:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroRefreshRate]  DEFAULT ('0') FOR [macroRefreshRate]
GO
/****** Object:  Default [DF_cmsMacro_macroCacheByPage]    Script Date: 04/13/2014 01:13:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ('1') FOR [macroCacheByPage]
GO
/****** Object:  Default [DF_cmsMacro_macroCachePersonalized]    Script Date: 04/13/2014 01:13:13 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ('0') FOR [macroCachePersonalized]
GO
/****** Object:  Default [DF_cmsMacro_macroDontRender]    Script Date: 04/13/2014 01:13:14 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ('0') FOR [macroDontRender]
GO
/****** Object:  Default [DF_umbracoServer_registeredDate]    Script Date: 04/13/2014 01:13:23 ******/
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
/****** Object:  Default [DF_umbracoServer_lastNotifiedDate]    Script Date: 04/13/2014 01:13:23 ******/
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_lastNotifiedDate]  DEFAULT (getdate()) FOR [lastNotifiedDate]
GO
/****** Object:  Default [DF_umbracoNode_trashed]    Script Date: 04/13/2014 01:13:27 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
/****** Object:  Default [DF_umbracoNode_createDate]    Script Date: 04/13/2014 01:13:27 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_umbracoLog_Datestamp]    Script Date: 04/13/2014 01:13:29 ******/
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
/****** Object:  Default [DF_umbracoUser_userDisabled]    Script Date: 04/13/2014 01:13:37 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
/****** Object:  Default [DF_umbracoUser_userNoConsole]    Script Date: 04/13/2014 01:13:37 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
/****** Object:  Default [DF_umbracoUser_defaultToLiveEditing]    Script Date: 04/13/2014 01:13:37 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_defaultToLiveEditing]  DEFAULT ('0') FOR [defaultToLiveEditing]
GO
/****** Object:  Default [DF_umbracoRelation_datetime]    Script Date: 04/13/2014 01:13:40 ******/
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
/****** Object:  Default [DF_cmsMacroProperty_macroPropertyHidden]    Script Date: 04/13/2014 01:13:42 ******/
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertyHidden]  DEFAULT ('0') FOR [macroPropertyHidden]
GO
/****** Object:  Default [DF_cmsMacroProperty_macroPropertySortOrder]    Script Date: 04/13/2014 01:13:42 ******/
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertySortOrder]  DEFAULT ('0') FOR [macroPropertySortOrder]
GO
/****** Object:  Default [DF_cmsContentType_thumbnail]    Script Date: 04/13/2014 01:13:48 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
/****** Object:  Default [DF_cmsContentType_isContainer]    Script Date: 04/13/2014 01:13:48 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isContainer]  DEFAULT ('0') FOR [isContainer]
GO
/****** Object:  Default [DF_cmsContentType_allowAtRoot]    Script Date: 04/13/2014 01:13:48 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
/****** Object:  Default [DF_cmsDocumentType_IsDefault]    Script Date: 04/13/2014 01:13:54 ******/
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
/****** Object:  Default [DF_cmsDocument_updateDate]    Script Date: 04/13/2014 01:13:57 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
/****** Object:  Default [DF_cmsDocument_newest]    Script Date: 04/13/2014 01:13:57 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_newest]  DEFAULT ('0') FOR [newest]
GO
/****** Object:  Default [DF_cmsContentVersion_VersionDate]    Script Date: 04/13/2014 01:14:00 ******/
ALTER TABLE [dbo].[cmsContentVersion] ADD  CONSTRAINT [DF_cmsContentVersion_VersionDate]  DEFAULT (getdate()) FOR [VersionDate]
GO
/****** Object:  Default [df_cmsContentTypeAllowedContentType_sortOrder]    Script Date: 04/13/2014 01:14:02 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
/****** Object:  Default [DF_cmsTask_closed]    Script Date: 04/13/2014 01:14:05 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_closed]  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF_cmsTask_DateTime]    Script Date: 04/13/2014 01:14:05 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_DateTime]  DEFAULT (getdate()) FOR [DateTime]
GO
/****** Object:  Default [DF_cmsMember_Email]    Script Date: 04/13/2014 01:14:09 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
/****** Object:  Default [DF_cmsMember_LoginName]    Script Date: 04/13/2014 01:14:10 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
/****** Object:  Default [DF_cmsMember_Password]    Script Date: 04/13/2014 01:14:10 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
/****** Object:  Default [DF_cmsMemberType_memberCanEdit]    Script Date: 04/13/2014 01:14:11 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
/****** Object:  Default [DF_cmsMemberType_viewOnProfile]    Script Date: 04/13/2014 01:14:11 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
/****** Object:  Default [DF_cmsPropertyType_sortOrder]    Script Date: 04/13/2014 01:14:20 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
/****** Object:  Default [DF_cmsPropertyType_mandatory]    Script Date: 04/13/2014 01:14:21 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
/****** Object:  ForeignKey [FK_umbracoNode_umbracoNode_id]    Script Date: 04/13/2014 01:13:27 ******/
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoDomains_umbracoNode_id]    Script Date: 04/13/2014 01:13:32 ******/
ALTER TABLE [dbo].[umbracoDomains]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomains_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomains] CHECK CONSTRAINT [FK_umbracoDomains_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsTemplate_cmsTemplate]    Script Date: 04/13/2014 01:13:34 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_cmsTemplate] FOREIGN KEY([master])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_cmsTemplate]
GO
/****** Object:  ForeignKey [FK_cmsTemplate_umbracoNode]    Script Date: 04/13/2014 01:13:34 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoUser_umbracoUserType_id]    Script Date: 04/13/2014 01:13:37 ******/
ALTER TABLE [dbo].[umbracoUser]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser_umbracoUserType_id] FOREIGN KEY([userType])
REFERENCES [dbo].[umbracoUserType] ([id])
GO
ALTER TABLE [dbo].[umbracoUser] CHECK CONSTRAINT [FK_umbracoUser_umbracoUserType_id]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode]    Script Date: 04/13/2014 01:13:39 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode1]    Script Date: 04/13/2014 01:13:39 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoRelationType_id]    Script Date: 04/13/2014 01:13:39 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
/****** Object:  ForeignKey [FK_cmsMacroProperty_cmsMacro_id]    Script Date: 04/13/2014 01:13:41 ******/
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id]
GO
/****** Object:  ForeignKey [FK_cmsMacroProperty_cmsMacroPropertyType_id]    Script Date: 04/13/2014 01:13:41 ******/
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacroPropertyType_id] FOREIGN KEY([macroPropertyType])
REFERENCES [dbo].[cmsMacroPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacroPropertyType_id]
GO
/****** Object:  ForeignKey [FK_cmsStylesheet_umbracoNode_id]    Script Date: 04/13/2014 01:13:43 ******/
ALTER TABLE [dbo].[cmsStylesheet]  WITH CHECK ADD  CONSTRAINT [FK_cmsStylesheet_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsStylesheet] CHECK CONSTRAINT [FK_cmsStylesheet_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsTagRelationship_cmsTags_id]    Script Date: 04/13/2014 01:13:44 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
/****** Object:  ForeignKey [FK_cmsTagRelationship_umbracoNode_id]    Script Date: 04/13/2014 01:13:45 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsContentType2ContentType_umbracoNode_child]    Script Date: 04/13/2014 01:13:45 ******/
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
/****** Object:  ForeignKey [FK_cmsContentType2ContentType_umbracoNode_parent]    Script Date: 04/13/2014 01:13:46 ******/
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
/****** Object:  ForeignKey [FK_cmsContentType_umbracoNode_id]    Script Date: 04/13/2014 01:13:48 ******/
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsContent_umbracoNode_id]    Script Date: 04/13/2014 01:13:50 ******/
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsDataType_umbracoNode_id]    Script Date: 04/13/2014 01:13:51 ******/
ALTER TABLE [dbo].[cmsDataType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDataType] CHECK CONSTRAINT [FK_cmsDataType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsLanguageText_cmsDictionary_id]    Script Date: 04/13/2014 01:13:52 ******/
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsContentType_nodeId]    Script Date: 04/13/2014 01:13:54 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsTemplate_nodeId]    Script Date: 04/13/2014 01:13:54 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_umbracoNode_id]    Script Date: 04/13/2014 01:13:54 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsDocument_cmsContent_nodeId]    Script Date: 04/13/2014 01:13:57 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocument_cmsTemplate_nodeId]    Script Date: 04/13/2014 01:13:57 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsDocument_umbracoNode_id]    Script Date: 04/13/2014 01:13:57 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsContentXml_cmsContent_nodeId]    Script Date: 04/13/2014 01:13:58 ******/
ALTER TABLE [dbo].[cmsContentXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentXml] CHECK CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsContentVersion_cmsContent_nodeId]    Script Date: 04/13/2014 01:14:00 ******/
ALTER TABLE [dbo].[cmsContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId] FOREIGN KEY([ContentId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentVersion] CHECK CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType]    Script Date: 04/13/2014 01:14:01 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType1]    Script Date: 04/13/2014 01:14:02 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
/****** Object:  ForeignKey [FK_cmsTask_cmsTaskType_id]    Script Date: 04/13/2014 01:14:04 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_cmsTaskType_id] FOREIGN KEY([taskTypeId])
REFERENCES [dbo].[cmsTaskType] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_cmsTaskType_id]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoNode_id]    Script Date: 04/13/2014 01:14:04 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser]    Script Date: 04/13/2014 01:14:04 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY([parentUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser1]    Script Date: 04/13/2014 01:14:05 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser1]
GO
/****** Object:  ForeignKey [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]    Script Date: 04/13/2014 01:14:06 ******/
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id]    Script Date: 04/13/2014 01:14:06 ******/
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id] FOREIGN KEY([parentGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id]
GO
/****** Object:  ForeignKey [FK_cmsDataTypePreValues_cmsDataType_nodeId]    Script Date: 04/13/2014 01:14:08 ******/
ALTER TABLE [dbo].[cmsDataTypePreValues]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId] FOREIGN KEY([datatypeNodeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDataTypePreValues] CHECK CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMember_cmsContent_nodeId]    Script Date: 04/13/2014 01:14:09 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMember_umbracoNode_id]    Script Date: 04/13/2014 01:14:09 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsMemberType_cmsContentType_nodeId]    Script Date: 04/13/2014 01:14:11 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMemberType_umbracoNode_id]    Script Date: 04/13/2014 01:14:11 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoNode_id]    Script Date: 04/13/2014 01:14:12 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoUser_id]    Script Date: 04/13/2014 01:14:13 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoNode_id]    Script Date: 04/13/2014 01:14:14 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoUser_id]    Script Date: 04/13/2014 01:14:14 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
/****** Object:  ForeignKey [FK_umbracoUser2app_umbracoUser_id]    Script Date: 04/13/2014 01:14:15 ******/
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoUser_id] FOREIGN KEY([user])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoUser_id]
GO
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContent_nodeId]    Script Date: 04/13/2014 01:14:16 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContentVersion_VersionId]    Script Date: 04/13/2014 01:14:16 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[cmsContentVersion] ([VersionId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId]
GO
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_cmsMember_nodeId]    Script Date: 04/13/2014 01:14:18 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_umbracoNode_id]    Script Date: 04/13/2014 01:14:18 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsContentType_nodeId]    Script Date: 04/13/2014 01:14:20 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsDataType_nodeId]    Script Date: 04/13/2014 01:14:20 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsPropertyTypeGroup_id]    Script Date: 04/13/2014 01:14:20 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyData_cmsPropertyType_id]    Script Date: 04/13/2014 01:14:23 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id] FOREIGN KEY([propertytypeid])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id]
GO
/****** Object:  ForeignKey [FK_cmsPropertyData_umbracoNode_id]    Script Date: 04/13/2014 01:14:23 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_umbracoNode_id] FOREIGN KEY([contentNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_umbracoNode_id]
GO
