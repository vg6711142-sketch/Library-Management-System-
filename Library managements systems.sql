create database library01;
use library01;

create table Members (
MemberID int primary key,
MemberName varchar(100) not null,
Gender varchar(10),
City varchar(50),
Joindate date
);

select * from members;

create table Authors (
AuthorID int primary key,
AuthorName varchar(100),
Country varchar(50)
);

create table Books (
BookID int primary key,
BookName varchar(100),
AuthorID int,
Category varchar(50),
Price decimal(10,2),
Availablecopies int,
constraint fk_author
foreign key (AuthorID) references Authors(AuthorID)
);

create table Borrows(
BorrowID int primary key,
MemberID int,
BookID int,
Borrowdate date,
Returndate date,
constraint fk_member
foreign key (MemberID) references Members(MemberID),
constraint fk_book
foreign key (BookID) references Books(BookID)
);

select * from members;
insert into members values 
(1,'Vivek Gupta','M','Mumbai','2026-07-03'),
(2,'Rahul Sharma','M','Delhi','2026-07-04'),
(3,'Priya Patel','F','Ahmedabad','2026-07-05'),
(4,'Amit Kumar','M','Pune','2026-07-06'),
(5,'Sneha Singh','F','Lucknow','2026-07-07'),
(6,'Rohit Verma','M','Bangalore','2026-07-08'),
(7,'Neha Joshi','F','Jaipur','2026-07-09'),
(8,'Arjun Mehta','M','Mumbai','2026-07-10'),
(9,'Pooja Shah','F','Surat','2026-07-11'),
(10,'Karan Malhotra','M','Chandigarh','2026-07-12'),
(11,'Anjali Gupta','F','Kolkata','2026-07-13'),
(12,'Vishal Yadav','M','Patna','2026-07-14'),
(13,'Riya Kapoor','F','Delhi','2026-07-15'),
(14,'Sahil Khan','M','Hyderabad','2026-07-16'),
(15,'Nisha Reddy','F','Hyderabad','2026-07-17'),
(16,'Akash Mishra','M','Kanpur','2026-07-18'),
(17,'Simran Kaur','F','Amritsar','2026-07-19'),
(18,'Manish Tiwari','M','Varanasi','2026-07-20'),
(19,'Kavya Nair','F','Kochi','2026-07-21'),
(20,'Ravi Deshmukh','M','Nagpur','2026-07-22'),
(21,'Meera Iyer','F','Chennai','2026-07-23'),
(22,'Aditya Saxena','M','Noida','2026-07-24'),
(23,'Shreya Agarwal','F','Agra','2026-07-25'),
(24,'Nikhil Bansal','M','Gurgaon','2026-07-26'),
(25,'Ayesha Sheikh','F','Mumbai','2026-07-27'),
(26,'Deepak Chauhan','M','Dehradun','2026-07-28'),
(27,'Ishita Roy','F','Kolkata','2026-07-29'),
(28,'Varun Sethi','M','Delhi','2026-07-30'),
(29,'Tanvi Kulkarni','F','Pune','2026-07-31'),
(30,'Mohit Jain','M','Indore','2026-08-01'),
(31,'Divya Menon','F','Bangalore','2026-08-02'),
(32,'Saurabh Pandey','M','Allahabad','2026-08-03'),
(33,'Komal Verma','F','Bhopal','2026-08-04'),
(34,'Rajat Srivastava','M','Lucknow','2026-08-05'),
(35,'Isha Choudhary','F','Jaipur','2026-08-06'),
(36,'Abhishek Thakur','M','Shimla','2026-08-07'),
(37,'Muskan Sharma','F','Delhi','2026-08-08'),
(38,'Yash Patel','M','Ahmedabad','2026-08-09'),
(39,'Sakshi Pawar','F','Nashik','2026-08-10'),
(40,'Harsh Vardhan','M','Faridabad','2026-08-11'),
(41,'Aditi Desai','F','Vadodara','2026-08-12'),
(42,'Rohan Kulkarni','M','Pune','2026-08-13'),
(43,'Payal Gupta','F','Ranchi','2026-08-14'),
(44,'Abhinav Singh','M','Patna','2026-08-15'),
(45,'Nandini Rao','F','Bangalore','2026-08-16'),
(46,'Dev Sharma','M','Chandigarh','2026-08-17'),
(47,'Mansi Shah','F','Surat','2026-08-18'),
(48,'Varsha Nair','F','Kochi','2026-08-19'),
(49,'Gaurav Mehta','M','Mumbai','2026-08-20'),
(50,'Pallavi Joshi','F','Pune','2026-08-21');

insert into  Authors values
(1, 'R. K. Narayan', 'India'),
(2, 'Arundhati Roy', 'India'),
(3, 'Chetan Bhagat', 'India'),
(4, 'Amish Tripathi', 'India'),
(5, 'Ruskin Bond', 'India'),
(6, 'Vikram Seth', 'India'),
(7, 'Khushwant Singh', 'India'),
(8, 'Jhumpa Lahiri', 'India'),
(9, 'Amitav Ghosh', 'India'),
(10, 'Sudha Murty', 'India'),
(11, 'William Shakespeare', 'England'),
(12, 'Jane Austen', 'England'),
(13, 'Charles Dickens', 'England'),
(14, 'George Orwell', 'England'),
(15, 'J. K. Rowling', 'England'),
(16, 'J. R. R. Tolkien', 'England'),
(17, 'Agatha Christie', 'England'),
(18, 'Virginia Woolf', 'England'),
(19, 'Oscar Wilde', 'Ireland'),
(20, 'Arthur Conan Doyle', 'Scotland'),
(21, 'Mark Twain', 'USA'),
(22, 'Ernest Hemingway', 'USA'),
(23, 'F. Scott Fitzgerald', 'USA'),
(24, 'Stephen King', 'USA'),
(25, 'Dan Brown', 'USA'),
(26, 'John Steinbeck', 'USA'),
(27, 'Harper Lee', 'USA'),
(28, 'Maya Angelou', 'USA'),
(29, 'J. D. Salinger', 'USA'),
(30, 'Louisa May Alcott', 'USA'),
(31, 'Leo Tolstoy', 'Russia'),
(32, 'Fyodor Dostoevsky', 'Russia'),
(33, 'Anton Chekhov', 'Russia'),
(34, 'Victor Hugo', 'France'),
(35, 'Alexandre Dumas', 'France'),
(36, 'Albert Camus', 'France'),
(37, 'Paulo Coelho', 'Brazil'),
(38, 'Gabriel Garcia Marquez', 'Colombia'),
(39, 'Haruki Murakami', 'Japan'),
(40, 'Yukio Mishima', 'Japan'),
(41, 'Khaled Hosseini', 'Afghanistan'),
(42, 'Orhan Pamuk', 'Turkey'),
(43, 'Hermann Hesse', 'Germany'),
(44, 'Franz Kafka', 'Czech Republic'),
(45, 'Pablo Neruda', 'Chile'),
(46, 'Chimamanda Ngozi Adichie', 'Nigeria'),
(47, 'Ngugi wa Thiong’o', 'Kenya'),
(48, 'Kazuo Ishiguro', 'Japan'),
(49, 'Margaret Atwood', 'Canada'),
(50, 'Danielle Steel', 'USA');

select * from books;

insert into Books values
(1, 'Malgudi Days', 1, 'Fiction', 399, 15),
(2, 'The Guide', 1, 'Fiction', 350, 10),
(3, 'The God of Small Things', 2, 'Fiction', 450, 12),
(4, 'Five Point Someone', 3, 'Fiction', 299, 20),
(5, 'The Immortals of Meluha', 4, 'Mythology', 499, 18),
(6, 'The Room on the Roof', 5, 'Fiction', 320, 14),
(7, 'A Suitable Boy', 6, 'Fiction', 550, 8),
(8, 'Train to Pakistan', 7, 'Historical Fiction', 399, 11),
(9, 'Interpreter of Maladies', 8, 'Short Stories', 450, 16),
(10, 'The Shadow Lines', 9, 'Fiction', 420, 9),
(11, 'Wise and Otherwise', 10, 'Inspirational', 299, 22),
(12, 'Hamlet', 11, 'Drama', 250, 25),
(13, 'Romeo and Juliet', 11, 'Drama', 275, 20),
(14, 'Pride and Prejudice', 12, 'Romance', 350, 17),
(15, 'Emma', 12, 'Romance', 320, 13),
(16, 'Oliver Twist', 13, 'Classic', 399, 15),
(17, 'Great Expectations', 13, 'Classic', 450, 10),
(18, '1984', 14, 'Dystopian', 399, 21),
(19, 'Animal Farm', 14, 'Political Fiction', 299, 30),
(20, 'Harry Potter and the Philosopher''s Stone', 15, 'Fantasy', 599, 18),
(21, 'The Hobbit', 16, 'Fantasy', 499, 14),
(22, 'Murder on the Orient Express', 17, 'Mystery', 399, 16),
(23, 'Mrs Dalloway', 18, 'Modern Fiction', 350, 9),
(24, 'The Picture of Dorian Gray', 19, 'Classic', 375, 12),
(25, 'The Adventures of Sherlock Holmes', 20, 'Mystery', 450, 20),
(26, 'The Adventures of Tom Sawyer', 21, 'Adventure', 299, 15),
(27, 'The Old Man and the Sea', 22, 'Classic', 350, 11),
(28, 'The Great Gatsby', 23, 'Classic', 399, 19),
(29, 'The Shining', 24, 'Horror', 499, 13),
(30, 'The Da Vinci Code', 25, 'Thriller', 550, 17),
(31, 'The Grapes of Wrath', 26, 'Classic', 450, 8),
(32, 'To Kill a Mockingbird', 27, 'Classic', 399, 16),
(33, 'I Know Why the Caged Bird Sings', 28, 'Autobiography', 425, 10),
(34, 'The Catcher in the Rye', 29, 'Coming of Age', 350, 14),
(35, 'Little Women', 30, 'Classic', 299, 20),
(36, 'War and Peace', 31, 'Historical Fiction', 650, 7),
(37, 'Crime and Punishment', 32, 'Psychological Fiction', 499, 12),
(38, 'The Cherry Orchard', 33, 'Drama', 350, 9),
(39, 'Les Miserables', 34, 'Historical Fiction', 599, 8),
(40, 'The Count of Monte Cristo', 35, 'Adventure', 550, 11),
(41, 'The Stranger', 36, 'Philosophical Fiction', 399, 15),
(42, 'The Alchemist', 37, 'Inspirational', 399, 25),
(43, 'One Hundred Years of Solitude', 38, 'Magical Realism', 499, 13),
(44, 'Norwegian Wood', 39, 'Romance', 450, 18),
(45, 'The Sailor Who Fell from Grace with the Sea', 40, 'Literary Fiction', 425, 7),
(46, 'The Kite Runner', 41, 'Historical Fiction', 450, 16),
(47, 'My Name Is Red', 42, 'Mystery', 499, 10),
(48, 'Siddhartha', 43, 'Philosophical Fiction', 299, 19),
(49, 'The Metamorphosis', 44, 'Surreal Fiction', 250, 22),
(50, 'The Handmaid''s Tale', 49, 'Dystopian', 450, 14);

insert into borrows values
(1, 1, 5, '2026-07-01', '2026-07-10'),
(2, 2, 12, '2026-07-02', '2026-07-12'),
(3, 3, 20, '2026-07-03', '2026-07-13'),
(4, 4, 7, '2026-07-04', '2026-07-14'),
(5, 5, 18, '2026-07-05', '2026-07-15'),
(6, 6, 25, '2026-07-06', '2026-07-16'),
(7, 7, 32, '2026-07-07', '2026-07-17'),
(8, 8, 10, '2026-07-08', '2026-07-18'),
(9, 9, 42, '2026-07-09', '2026-07-19'),
(10, 10, 30, '2026-07-10', '2026-07-20'),
(11, 11, 15, '2026-07-11', '2026-07-21'),
(12, 12, 3, '2026-07-12', '2026-07-22'),
(13, 13, 27, '2026-07-13', '2026-07-23'),
(14, 14, 44, '2026-07-14', '2026-07-24'),
(15, 15, 9, '2026-07-15', '2026-07-25'),
(16, 16, 36, '2026-07-16', '2026-07-26'),
(17, 17, 21, '2026-07-17', '2026-07-27'),
(18, 18, 49, '2026-07-18', '2026-07-28'),
(19, 19, 14, '2026-07-19', '2026-07-29'),
(20, 20, 38, '2026-07-20', '2026-07-30'),
(21, 21, 2, '2026-07-21', '2026-07-31'),
(22, 22, 16, '2026-07-22', '2026-08-01'),
(23, 23, 29, '2026-07-23', '2026-08-02'),
(24, 24, 45, '2026-07-24', '2026-08-03'),
(25, 25, 11, '2026-07-25', '2026-08-04'),
(26, 26, 33, '2026-07-26', '2026-08-05'),
(27, 27, 24, '2026-07-27', '2026-08-06'),
(28, 28, 40, '2026-07-28', '2026-08-07'),
(29, 29, 6, '2026-07-29', '2026-08-08'),
(30, 30, 17, '2026-07-30', '2026-08-09'),
(31, 31, 31, '2026-07-31', '2026-08-10'),
(32, 32, 48, '2026-08-01', '2026-08-11'),
(33, 33, 13, '2026-08-02', '2026-08-12'),
(34, 34, 26, '2026-08-03', '2026-08-13'),
(35, 35, 39, '2026-08-04', '2026-08-14'),
(36, 36, 8, '2026-08-05', '2026-08-15'),
(37, 37, 19, '2026-08-06', '2026-08-16'),
(38, 38, 34, '2026-08-07', '2026-08-17'),
(39, 39, 43, '2026-08-08', '2026-08-18'),
(40, 40, 22, '2026-08-09', '2026-08-19'),
(41, 41, 46, '2026-08-10', '2026-08-20'),
(42, 42, 28, '2026-08-11', '2026-08-21'),
(43, 43, 35, '2026-08-12', '2026-08-22'),
(44, 44, 47, '2026-08-13', '2026-08-23'),
(45, 45, 1, '2026-08-14', '2026-08-24'),
(46, 46, 23, '2026-08-15', '2026-08-25'),
(47, 47, 37, '2026-08-16', '2026-08-26'),
(48, 48, 41, '2026-08-17', '2026-08-27'),
(49, 49, 50, '2026-08-18', '2026-08-28'),
(50, 50, 4, '2026-08-19', '2026-08-29');


select * from members;
select * from authors;
select * from books;
select * from borrows;

select Bookname, price from books;

select * from books
where price > 600;

select * from books
order by price desc;

update books
set price = 550
where Bookid = 1;

#deleting the borrows 2
delete from Borrows
where BorrowID =2;

-- select * from borrows 







