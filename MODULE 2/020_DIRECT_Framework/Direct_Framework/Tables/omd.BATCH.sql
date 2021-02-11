﻿CREATE TABLE [omd].[BATCH] (
    [BATCH_ID]           INT            IDENTITY (1, 1) NOT NULL,
    [BATCH_CODE]         VARCHAR (100)  NOT NULL,
    [FREQUENCY_CODE]     VARCHAR (100)  NULL,
    [BATCH_DESCRIPTION]  VARCHAR (1000) NOT NULL,
    [INACTIVE_INDICATOR] VARCHAR (1)    DEFAULT ('N') NOT NULL,
    CONSTRAINT [PK_BATCH] PRIMARY KEY CLUSTERED ([BATCH_ID] ASC),
    CONSTRAINT [IX_OMD_BATCH] UNIQUE NONCLUSTERED ([BATCH_CODE] ASC)
);
