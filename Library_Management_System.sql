CREATE DATABASE Library;
USE Library;
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Genre VARCHAR(100),
    PublicationDate DATE,
    ISBN VARCHAR(13),
    Availability BOOLEAN DEFAULT TRUE
);
INSERT INTO Books (Title, Author, Genre, PublicationDate, ISBN, Availability) VALUES
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960-07-11', '9780060935467', TRUE),
('1984', 'George Orwell', 'Dystopian', '1949-06-08', '9780451524935', TRUE),
('Pride and Prejudice', 'Jane Austen', 'Romance', '1813-01-28', '9780141040349', TRUE),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', '1925-04-10', '9780743273565', TRUE),
('Moby-Dick', 'Herman Melville', 'Adventure', '1851-10-18', '9781503280786', TRUE),
('War and Peace', 'Leo Tolstoy', 'Historical Fiction', '1869-01-01', '9781853260629', TRUE),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', '1951-07-16', '9780316769488', TRUE),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '1937-09-21', '9780345339683', TRUE),
('Brave New World', 'Aldous Huxley', 'Dystopian', '1932-08-30', '9780060850524', TRUE),
('The Odyssey', 'Homer', 'Epic', '800-01-01', '9780140268867', TRUE),
('Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological Fiction', '1866-01-01', '9780140449136', TRUE),
('The Divine Comedy', 'Dante Alighieri', 'Epic Poetry', '1320-01-01', '9780451208637', TRUE),
('Don Quixote', 'Miguel de Cervantes', 'Novel', '1605-01-01', '9780060934347', TRUE),
('Les Misérables', 'Victor Hugo', 'Historical Fiction', '1862-01-01', '9780451419439', TRUE),
('Jane Eyre', 'Charlotte Brontë', 'Romance', '1847-10-16', '9780141441146', TRUE),
('Wuthering Heights', 'Emily Brontë', 'Gothic Fiction', '1847-12-01', '9780141439556', TRUE),
('Anna Karenina', 'Leo Tolstoy', 'Novel', '1877-01-01', '9780143035008', TRUE),
('The Brothers Karamazov', 'Fyodor Dostoevsky', 'Philosophical Fiction', '1880-01-01', '9780374528379', TRUE),
('The Picture of Dorian Gray', 'Oscar Wilde', 'Philosophical Fiction', '1890-07-01', '9780486264645', TRUE),
('Dracula', 'Bram Stoker', 'Horror', '1897-05-26', '9780486281000', TRUE);
CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255),
    MembershipType VARCHAR(50),
    JoinDate DATE
);

drop table Borrowers;
INSERT INTO Borrowers (Name, ContactInfo, MembershipType, JoinDate) VALUES
('Alice Johnson', 'alice.johnson@example.com', 'Regular', '2023-01-15'),
('Bob Smith', 'bob.smith@example.com', 'Premium', '2023-02-10'),
('Carol Davis', 'carol.davis@example.com', 'Regular', '2023-03-22'),
('David Wilson', 'david.wilson@example.com', 'Regular', '2023-04-05'),
('Eve Adams', 'eve.adams@example.com', 'Premium', '2023-05-14'),
('Frank Miller', 'frank.miller@example.com', 'Regular', '2023-06-20'),
('Grace Lee', 'grace.lee@example.com', 'Premium', '2023-07-02'),
('Hannah Moore', 'hannah.moore@example.com', 'Regular', '2023-08-18'),
('Ivy Clark', 'ivy.clark@example.com', 'Regular', '2023-09-25'),
('Jack Harris', 'jack.harris@example.com', 'Premium', '2023-10-10'),
('Kathy Lewis', 'kathy.lewis@example.com', 'Regular', '2023-11-01'),
('Liam Walker', 'liam.walker@example.com', 'Premium', '2023-12-12'),
('Mia Young', 'mia.young@example.com', 'Regular', '2023-01-22'),
('Nathan King', 'nathan.king@example.com', 'Regular', '2023-02-25'),
('Olivia Scott', 'olivia.scott@example.com', 'Premium', '2023-03-30'),
('Paul Green', 'paul.green@example.com', 'Regular', '2023-04-15'),
('Quinn Wright', 'quinn.wright@example.com', 'Premium', '2023-05-25'),
('Rachel Hall', 'rachel.hall@example.com', 'Regular', '2023-06-10'),
('Sam Young', 'sam.young@example.com', 'Premium', '2023-07-28'),
('Tina Adams', 'tina.adams@example.com', 'Regular', '2023-08-12'),
('Ursula Baker', 'ursula.baker@example.com', 'Regular', '2023-09-20');
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    BorrowerID INT,
    BookID INT,
    LoanDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
drop table Transactions;
INSERT INTO Transactions (BorrowerID, BookID, LoanDate, DueDate, ReturnDate) VALUES
(1, 1, '2024-08-01', '2024-08-15', '2024-08-10'),
(2, 2, '2024-08-02', '2024-08-16', NULL),
(3, 3, '2024-08-03', '2024-08-17', '2024-08-14'),
(4, 4, '2024-08-04', '2024-08-18', NULL),
(5, 5, '2024-08-05', '2024-08-19', '2024-08-18'),
(6, 6, '2024-08-06', '2024-08-20', NULL),
(7, 7, '2024-08-07', '2024-08-21', '2024-08-20'),
(8, 8, '2024-08-08', '2024-08-22', NULL),
(9, 9, '2024-08-09', '2024-08-23', '2024-08-22'),
(10, 10, '2024-08-10', '2024-08-24', NULL),
(11, 11, '2024-08-11', '2024-08-25', '2024-08-24'),
(12, 12, '2024-08-12', '2024-08-26', NULL),
(13, 13, '2024-08-13', '2024-08-27', '2024-08-26'),
(14, 14, '2024-08-14', '2024-08-28', NULL),
(15, 15, '2024-08-15', '2024-08-29', '2024-08-28'),
(16, 16, '2024-08-16', '2024-08-30', NULL),
(17, 17, '2024-08-17', '2024-08-31', '2024-08-30'),
(18, 18, '2024-08-18', '2024-09-01', NULL),
(19, 19, '2024-08-19', '2024-09-02', '2024-09-01'),
(20, 20, '2024-08-20', '2024-09-03', NULL);
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Position VARCHAR(50),
    ContactInfo VARCHAR(255),
    HireDate DATE
);
INSERT INTO Staff (Name, Position, ContactInfo, HireDate) VALUES
('John Doe', 'Librarian', 'john.doe@example.com', '2023-01-15'),
('Jane Smith', 'Assistant Librarian', 'jane.smith@example.com', '2023-02-20'),
('Emily Johnson', 'Library Manager', 'emily.johnson@example.com', '2023-03-10'),
('Michael Brown', 'Librarian', 'michael.brown@example.com', '2023-04-05'),
('Sarah Davis', 'Assistant Librarian', 'sarah.davis@example.com', '2023-05-18'),
('David Wilson', 'Library Manager', 'david.wilson@example.com', '2023-06-25'),
('Linda Green', 'Librarian', 'linda.green@example.com', '2023-07-15'),
('James White', 'Assistant Librarian', 'james.white@example.com', '2023-08-10'),
('Barbara Harris', 'Library Manager', 'barbara.harris@example.com', '2023-09-05'),
('Robert Clark', 'Librarian', 'robert.clark@example.com', '2023-10-20'),
('Elizabeth Lewis', 'Assistant Librarian', 'elizabeth.lewis@example.com', '2023-11-12'),
('Daniel Walker', 'Library Manager', 'daniel.walker@example.com', '2023-12-01'),
('Jennifer Adams', 'Librarian', 'jennifer.adams@example.com', '2024-01-10'),
('Charles Young', 'Assistant Librarian', 'charles.young@example.com', '2024-02-22'),
('Megan Martinez', 'Library Manager', 'megan.martinez@example.com', '2024-03-15'),
('Andrew Thompson', 'Librarian', 'andrew.thompson@example.com', '2024-04-05'),
('Jessica Hall', 'Assistant Librarian', 'jessica.hall@example.com', '2024-05-20'),
('Joshua King', 'Library Manager', 'joshua.king@example.com', '2024-06-10'),
('Amanda Scott', 'Librarian', 'amanda.scott@example.com', '2024-07-15'),
('Christopher Turner', 'Assistant Librarian', 'christopher.turner@example.com', '2024-08-05');
CREATE TABLE Fines (
    FineID INT PRIMARY KEY AUTO_INCREMENT,
    BorrowerID INT,
    TransactionID INT,
    Amount DECIMAL(10, 2),
    PaidStatus BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID),
    FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID)
);
INSERT INTO Fines (BorrowerID, TransactionID, Amount, PaidStatus) VALUES
(1, 1, 5.00, FALSE),
(2, 2, 0.00, TRUE),
(3, 3, 2.50, TRUE),
(4, 4, 0.00, TRUE),
(5, 5, 3.00, FALSE),
(6, 6, 0.00, TRUE),
(7, 7, 1.00, TRUE),
(8, 8, 0.00, TRUE),
(9, 9, 2.00, FALSE),
(10, 10, 0.00, TRUE),
(11, 11, 0.00, TRUE),
(12, 12, 4.00, FALSE),
(13, 13, 1.50, TRUE),
(14, 14, 0.00, TRUE),
(15, 15, 2.00, FALSE),
(16, 16, 0.00, TRUE),
(17, 17, 0.00, TRUE),
(18, 18, 3.50, FALSE),
(19, 19, 0.00, TRUE),
(20, 20, 0.00, TRUE);
CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    BorrowerID INT,
    BookID INT,
    ReservationDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
INSERT INTO Reservations (BorrowerID, BookID, ReservationDate, Status) VALUES
(1, 2, '2024-07-15', 'Active'),
(2, 3, '2024-07-20', 'Fulfilled'),
(3, 4, '2024-07-25', 'Active'),
(4, 5, '2024-07-30', 'Cancelled'),
(5, 6, '2024-08-01', 'Fulfilled'),
(6, 7, '2024-08-05', 'Active'),
(7, 8, '2024-08-10', 'Fulfilled'),
(8, 9, '2024-08-15', 'Active'),
(9, 10, '2024-08-20', 'Cancelled'),
(10, 11, '2024-08-25', 'Fulfilled'),
(11, 12, '2024-09-01', 'Active'),
(12, 13, '2024-09-05', 'Fulfilled'),
(13, 14, '2024-09-10', 'Active'),
(14, 15, '2024-09-15', 'Cancelled'),
(15, 16, '2024-09-20', 'Fulfilled'),
(16, 17, '2024-09-25', 'Active'),
(17, 18, '2024-10-01', 'Fulfilled'),
(18, 19, '2024-10-05', 'Active'),
(19, 20, '2024-10-10', 'Cancelled'),
(20, 1, '2024-10-15', 'Fulfilled');
CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255)
);
INSERT INTO Publishers (Name, ContactInfo) VALUES
('Penguin Books', 'contact@penguin.com'),
('HarperCollins', 'contact@harpercollins.com'),
('Random House', 'info@randomhouse.com'),
('Simon & Schuster', 'info@simonandschuster.com'),
('Macmillan', 'info@macmillan.com'),
('Hachette Book Group', 'info@hachettebookgroup.com'),
('Scholastic', 'contact@scholastic.com'),
('Bloomsbury', 'info@bloomsbury.com'),
('Oxford University Press', 'info@oup.com'),
('Cambridge University Press', 'info@cambridge.org'),
('Wiley', 'info@wiley.com'),
('Little, Brown and Company', 'info@littlebrown.com'),
('St. Martin\'s Press', 'info@stmartins.com'),
('University of Chicago Press', 'info@press.uchicago.edu'),
('MIT Press', 'info@mitpress.mit.edu'),
('Harvard University Press', 'info@harvard.edu'),
('Norton & Company', 'info@norton.com'),
('Kirkus Reviews', 'info@kirkus.com'),
('Rowman & Littlefield', 'info@rowman.com'),
('Perseus Books Group', 'info@perseusbooks.com');
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100)
);
INSERT INTO Categories (CategoryName) VALUES
('Fiction'),
('Non-Fiction'),
('Science'),
('History'),
('Biography'),
('Children\'s'),
('Young Adult'),
('Fantasy'),
('Mystery'),
('Thriller'),
('Romance'),
('Adventure'),
('Horror'),
('Science Fiction'),
('Classics'),
('Poetry'),
('Drama'),
('Graphic Novels'),
('Travel'),
('Self-Help'),
('Cookbooks');
CREATE TABLE Book_Categories (
    BookID INT,
    CategoryID INT,
    PRIMARY KEY (BookID, CategoryID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
INSERT INTO Book_Categories (BookID, CategoryID) VALUES
(1, 1),
(2, 1),
(3, 12),
(4, 1),
(5, 13),
(6, 4),
(7, 1),
(8, 8),
(9, 2),
(10, 2),
(11, 4),
(12, 1),
(13, 15),
(14, 1),
(15, 4),
(16, 15),
(17, 1),
(18, 3),
(19, 4),
(20, 5);
show tables;
INSERT INTO Books (Title, Author, Genre, PublicationDate, ISBN, Availability) 
VALUES ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960-07-11', '9780060935467', TRUE);
SET SQL_SAFE_UPDATES = 0;
UPDATE Books 
SET Availability = FALSE 
WHERE ISBN = '9780060935467';
DELETE FROM Publishers 
WHERE Name = 'Macmillan';
SELECT * FROM Publishers;
UPDATE Reservations 
SET Status = 'Cancelled' 
WHERE ReservationID = 1;
SELECT * FROM Reservations;
INSERT INTO Reservations (BorrowerID, BookID, ReservationDate, Status) 
VALUES (2, 3, '2024-09-05', 'Active');
SELECT * 
FROM Books 
WHERE Availability = TRUE;
SELECT b.Title, b.Author 
FROM Books b
JOIN Transactions t ON b.BookID = t.BookID
WHERE t.BorrowerID = 1;
SELECT b.Title, COUNT(t.TransactionID) AS BorrowCount 
FROM Books b
JOIN Transactions t ON b.BookID = t.BookID
GROUP BY b.Title
ORDER BY BorrowCount DESC;
SELECT b.Title, bor.Name, t.DueDate 
FROM Books b
JOIN Transactions t ON b.BookID = t.BookID
JOIN Borrowers bor ON t.BorrowerID = bor.BorrowerID
WHERE t.ReturnDate IS NULL AND t.DueDate < CURDATE();
SELECT r.ReservationID, bor.Name, r.ReservationDate, r.Status 
FROM Reservations r
JOIN Borrowers bor ON r.BorrowerID = bor.BorrowerID
WHERE r.BookID = 3;
SELECT bor.Name, COUNT(t.TransactionID) AS TotalBorrowed 
FROM Borrowers bor
JOIN Transactions t ON bor.BorrowerID = t.BorrowerID
GROUP BY bor.Name;
SELECT bor.Name, SUM(f.Amount) AS TotalFines 
FROM Borrowers bor
JOIN Fines f ON bor.BorrowerID = f.BorrowerID
GROUP BY bor.Name;
SELECT b.Title, COUNT(bc.CategoryID) AS CategoryCount 
FROM Books b
JOIN Book_Categories bc ON b.BookID = bc.BookID
GROUP BY b.Title
HAVING CategoryCount >=1;
SELECT * 
FROM Transactions 
WHERE LoanDate BETWEEN '2024-01-01' AND '2024-12-31';
SELECT bor.Name 
FROM Borrowers bor
LEFT JOIN Transactions t ON bor.BorrowerID = t.BorrowerID
WHERE t.TransactionID IS NULL;

