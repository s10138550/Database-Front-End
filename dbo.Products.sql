CREATE TABLE [dbo].[Products] (
    [Id]               BIGINT          IDENTITY (1, 1) NOT NULL,
    [ISBNNumber]       INT             NOT NULL,
    [BookTitle]        NVARCHAR (MAX)  NULL,
    [PublicationDate]  NVARCHAR (MAX)  NULL,
    [BookGenre]        NVARCHAR (MAX)  NULL,
    [ReadingLevel]     INT             NOT NULL,
    [UserRating]       INT             NOT NULL,
    [UserComments]     NVARCHAR (MAX)  NULL,
    [BookSummary]      NVARCHAR (MAX)  NULL,
    [RentalPrice]      DECIMAL (18, 2) NOT NULL,
    [PurchasePrice]    DECIMAL (18, 2) NOT NULL,
    [BookType]         NVARCHAR (MAX)  NULL,
    [BookLengthPages]  DECIMAL (18, 2) NOT NULL,
    [BookLengthAudio]  DECIMAL (18, 2) NOT NULL,
    [AmountInStock]    INT             NOT NULL,
    [BookSeries]       NVARCHAR (MAX)  NULL,
    [PublishedEdition] INT             NOT NULL,
    [BookNewOrUsed]    NVARCHAR (MAX)  NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC)
);

