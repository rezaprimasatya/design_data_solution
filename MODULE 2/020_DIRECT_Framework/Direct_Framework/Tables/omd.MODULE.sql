﻿CREATE TABLE [omd].[MODULE] (
    [MODULE_ID]          INT            IDENTITY (1, 1) NOT NULL,
    [MODULE_CODE]        VARCHAR (100)  NOT NULL,
    [MODULE_DESCRIPTION] VARCHAR (1000) NOT NULL,
    [MODULE_TYPE]        VARCHAR (100)  NOT NULL,
    [DATA_OBJECT_SOURCE] VARCHAR (100)  NOT NULL,
    [DATA_OBJECT_TARGET] VARCHAR (100)  NOT NULL,
    [AREA_CODE]          VARCHAR (100)  NOT NULL,
    [FREQUENCY_CODE]     VARCHAR (100)  NOT NULL,
    [INACTIVE_INDICATOR] VARCHAR (1)    DEFAULT ('N') NOT NULL,
    CONSTRAINT [PK_OMD_MODULE] PRIMARY KEY CLUSTERED ([MODULE_ID] ASC),
    CONSTRAINT [FK_MODULE_AREA] FOREIGN KEY ([AREA_CODE]) REFERENCES [omd].[AREA] ([AREA_CODE]),
    CONSTRAINT [IX_OMD_MODULE] UNIQUE NONCLUSTERED ([MODULE_CODE] ASC)
);

