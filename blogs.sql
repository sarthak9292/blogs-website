-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2021 at 07:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `num`, `mes`, `date`) VALUES
(1, 'try', 'try@gmail.com', '1234567890', 'this is trial', '0000-00-00 00:00:00'),
(2, 'first', 'first@gmail.com', '8718801966', 'this is my first post.', '2021-03-03 19:05:47'),
(3, 'checkmail', 'checkmail@gmail.com', '8948303238', 'this is to check mail.', '2021-03-05 19:42:42'),
(4, 'checkmail', 'checkmail@gmail.com', '8948303238', 'this is to check mail.', '2021-03-05 19:51:54'),
(5, 'checkmail', 'checkmail@gmail.com', '8948303238', 'this is to check mail.', '2021-03-05 20:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Computer programming', 'first-post', 'Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result or to perform a specific task. Programming involves tasks such as: analysis, generating algorithms, profiling algorithms\' accuracy and resource consumption, and the implementation of algorithms in a chosen programming language (commonly referred to as coding).<br/><br/>\r\n The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system) on a computer, often for solving a given problem. Proficient programming thus often requires expertise in several different subjects, including knowledge of the application domain, specialized algorithms, and formal logic.', 'home-bg.jpg', '2021-03-09 22:57:51'),
(5, 'Programming languages', 'prog-lang', 'A programming language defines a set of instructions that are compiled together to perform a specific task by the CPU (Central Processing Unit). The programming language mainly refers to high-level languages such as C, C++, Pascal, Ada, COBOL, etc. <br/>\r\n<br/>\r\nEach programming language contains a unique set of keywords and syntax, which are used to create a set of instructions. Thousands of programming languages have been developed till now, but each language has its specific purpose. These languages vary in the level of abstraction they provide from the hardware. Some programming languages provide less or no abstraction while some provide higher abstraction. Based on the levels of abstraction, they can be classified into two categories:<br/>\r\n<br/>\r\n1)Low-level language<br/>\r\n2)High-level language<br/>\r\n<br/>\r\n<h2>Low-level language:</h2><br/>\r\n\r\nThe low-level language is a programming language that provides no abstraction from the hardware, and it is represented in 0 or 1 forms, which are the machine instructions. The languages that come under this category are the Machine level language and Assembly language.<br/>\r\n<br/>\r\n<h4>Machine-level language:-</h4><br/>\r\nThe machine-level language is a language that consists of a set of instructions that are in the binary form 0 or 1. As we know that computers can understand only machine instructions, which are in binary digits, i.e., 0 and 1, so the instructions given to the computer can be only in binary codes. Creating a program in a machine-level language is a very difficult task as it is not easy for the programmers to write the program in machine instructions. It is error-prone as it is not easy to understand, and its maintenance is also very high. A machine-level language is not portable as each computer has its machine instructions, so if we write a program in one computer will no longer be valid in another computer.<br/>\r\n<br/>\r\nThe different processor architectures use different machine codes, for example, a PowerPC processor contains RISC architecture, which requires different code than intel x86 processor, which has a CISC architecture.<br/>\r\n<br/>\r\n<h4>Assembly Language:-</h4><br/>\r\nThe assembly language contains some human-readable commands such as mov, add, sub, etc. The problems which we were facing in machine-level language are reduced to some extent by using an extended form of machine-level language known as assembly language. Since assembly language instructions are written in English words like mov, add, sub, so it is easier to write and understand.<br/>\r\n<br/>\r\nAs we know that computers can only understand the machine-level instructions, so we require a translator that converts the assembly code into machine code. The translator used for translating the code is known as an assembler.<br/>\r\n<br/>\r\nThe assembly language code is not portable because the data is stored in computer registers, and the computer has to know the different sets of registers.<br/>\r\n<br/>\r\nThe assembly code is not faster than machine code because the assembly language comes above the machine language in the hierarchy, so it means that assembly language has some abstraction from the hardware while machine language has zero abstraction.<br/>\r\n<br/>\r\n<h2>High-Level Language:</h2><br/>\r\n\r\nThe high-level language is a programming language that allows a programmer to write the programs which are independent of a particular type of computer. The high-level languages are considered as high-level because they are closer to human languages than machine-level languages.<br/>\r\n<br/>\r\nWhen writing a program in a high-level language, then the whole attention needs to be paid to the logic of the problem.<br/>\r\n<br/>\r\nA compiler is required to translate a high-level language into a low-level language.<br/>\r\n<br/>\r\n<h4>Advantages of a high-level language:-</h4><br/>\r\n<br/>\r\n(i) The high-level language is easy to read, write, and maintain as it is written in English like words.<br/>\r\n(ii) The high-level languages are designed to overcome the limitation of low-level language, i.e., portability. The high-level language is portable; i.e., these languages are machine-independent.<br/>', 'home-bg.jpg', '2021-03-09 23:12:33'),
(6, 'Python', 'python-post', 'Python is a popular programming language. It was created by Guido van Rossum, and released in 1991.<br/>\r\n<br/>\r\nIt is used for:<br/>\r\n(i) web development (server-side),<br/>\r\n(ii) software development,<br/>\r\n(iii) mathematics,<br/>\r\n(iv) system scripting.<br/>\r\n<br/>\r\n<h3>What can Python do?</h3><br/>\r\n(i) Python can be used on a server to create web applications.<br/>\r\n(ii) Python can be used alongside software to create workflows.<br/>\r\n(iii) Python can connect to database systems. It can also read and modify files.<br/>\r\n(iv) Python can be used to handle big data and perform complex mathematics.<br/>\r\n(v) Python can be used for rapid prototyping, or for production-ready software development.<br/>\r\n<br/>\r\n<h3>Why Python?</h3><br/>\r\n(i) Python works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc).<br/>\r\n(ii) Python has a simple syntax similar to the English language.<br/>\r\n(iii) Python has syntax that allows developers to write programs with fewer lines than some other programming languages.<br/>\r\n(iv) Python runs on an interpreter system, meaning that code can be executed as soon as it is written. This means that prototyping can be very quick.<br/>\r\n(v) Python can be treated in a procedural way, an object-oriented way or a functional way.<br/>', 'home-bg.jpg', '2021-03-09 23:07:54'),
(7, 'Java', 'java-post', 'Java is a popular programming language, created in 1995.\r\n\r\nIt is owned by Oracle, and more than 3 billion devices run Java.<br/>\r\n<br/>\r\nIt is used for:<br/>\r\n<ul>\r\n<li>Mobile applications (specially Android apps)</li>\r\n<li>Desktop applications</li>\r\n<li>Web applications</li>\r\n<li>Web servers and application servers</li>\r\n<li>Database connection</li>\r\n</ul>\r\n<br/>\r\n<h2>Why Use Java?</h2><br/>\r\n<ul>\r\n<li>Java works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc.)</li>\r\n<li>It is one of the most popular programming language in the world.</li>\r\n<li>It is easy to learn and simple to use.</li>\r\n<li>It is open-source and free.</li>\r\n<li>It is secure, fast and powerful.</li>\r\n<li>It has a huge community support (tens of millions of developers)</li>\r\n<li>Java is an object oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs.</li>\r\n<li>As Java is close to C++ and C#, it makes it easy for programmers to switch to Java or vice versa.</li>\r\n</ul>', 'home-bg.jpg', '2021-03-09 23:27:29'),
(8, 'C++', 'c++-post', '<h2>What is C++?</h2><br/>\r\n<ul>\r\n<li>C++ is a cross-platform language that can be used to create high-performance applications.</li>\r\n<li>C++ was developed by Bjarne Stroustrup, as an extension to the C language.</li>\r\n<li>C++ gives programmers a high level of control over system resources and memory.</li>\r\n<li>The language was updated 3 major times in 2011, 2014, and 2017 to C++11, C++14, and  C++17.</li>\r\n</ul>\r\n<br/>\r\n<br/>\r\n<h2>Why Use C++</h2><br/>\r\n<ul>\r\n<li>C++ is one of the world\'s most popular programming languages.</li>\r\n<li>C++ can be found in today\'s operating systems, Graphical User Interfaces, and embedded systems.</li>\r\n<li>C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs.</li>\r\n<li>C++ is portable and can be used to develop applications that can be adapted to multiple platforms.</li>\r\n<li>C++ is fun and easy to learn!</li>\r\n<li>As C++ is close to C# and Java, it makes it easy for programmers to switch to C++ or vice versa.</li>\r\n</ul>', 'home-bg.jpg', '2021-03-10 18:58:55'),
(9, 'Object-Oriented Programming(oops)', 'oops-post', 'As the name suggests, Object-Oriented Programming or OOPs refers to languages that uses objects in programming. Object-oriented programming aims to implement real-world entities like inheritance, hiding, polymorphism etc in programming. The main aim of OOP is to bind together the data and the functions that operate on them so that no other part of the code can access this data except that function.<br/>\r\n<br/>\r\n<h2>OOPs Concepts:</h2><br/>\r\n<ul>\r\n<li>Polymorphism</li>\r\n<li>Inheritance</li>\r\n<li>Encapsulation</li>\r\n<li>Abstraction</li>\r\n<li>Class</li>\r\n<li>Object</li>\r\n</ul>\r\n<br/>\r\nLet us learn about the different characteristics of an Object-Oriented Programming language:<br/>\r\n<br/>\r\n<ol>\r\n<li><h4>Polymorphism</h4>Polymorphism refers to the ability of OOPs programming languages to differentiate between entities with the same name efficiently. This is done by Java with the help of the signature and declaration of these entities.<br/>\r\nPolymorphism in Java are mainly of 2 types:<br/>\r\n<ul>\r\n<li>Overloading in Java</li>\r\n<li>Overriding in Java</li>\r\n</ul>\r\n</li><br/>\r\n<li>\r\n<h4>Inheritance</h4> Inheritance is an important pillar of OOP(Object Oriented Programming). It is the mechanism in java by which one class is allow to inherit the features(fields and methods) of another class.<br/>\r\nImportant terminology:<br/>\r\n<ul>\r\n<li>Super Class: The class whose features are inherited is known as superclass(or a base class or a parent class).</li>\r\n<li>Sub Class: The class that inherits the other class is known as subclass(or a derived class, extended class, or child class). The subclass can add its own fields and methods in addition to the superclass fields and methods.</li>\r\n<li>Reusability: Inheritance supports the concept of “reusability”, i.e. when we want to create a new class and there is already a class that includes some of the code that we want, we can derive our new class from the existing class. By doing this, we are reusing the fields and methods of the existing class.</li>\r\n</ul>\r\n</li><br/>\r\n<li>\r\n<h4>Encapsulation</h4> Encapsulation is defined as the wrapping up of data under a single unit. It is the mechanism that binds together code and the data it manipulates. Another way to think about encapsulation is, it is a protective shield that prevents the data from being accessed by the code outside this shield.<br/>\r\n<ul>\r\n<li>Technically in encapsulation, the variables or data of a class is hidden from any other class and can be accessed only through any member function of own class in which they are declared.</li>\r\n<li>As in encapsulation, the data in a class is hidden from other classes, so it is also known as data-hiding.</li>\r\n<li>Encapsulation can be achieved by Declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.</li>\r\n</ul>\r\n</li><br/>\r\n<li>\r\n<h4>Abstraction</h4>Data Abstraction is the property by virtue of which only the essential details are displayed to the user.The trivial or the non-essentials units are not displayed to the user. Ex: A car is viewed as a car rather than its individual components.<br/>\r\nData Abstraction may also be defined as the process of identifying only the required characteristics of an object ignoring the irrelevant details. The properties and behaviours of an object differentiate it from other objects of similar type and also help in classifying/grouping the objects.<br/>\r\n\r\nConsider a real-life example of a man driving a car. The man only knows that pressing the accelerators will increase the speed of car or applying brakes will stop the car but he does not know about how on pressing the accelerator the speed is actually increasing, he does not know about the inner mechanism of the car or the implementation of accelerator, brakes etc in the car. This is what abstraction is.\r\n</li><br/>\r\n<li>\r\n<h4>Class</h4>A class is a user defined blueprint or prototype from which objects are created. It represents the set of properties or methods that are common to all objects of one type. In general, class declarations can include these components, in order:<br/>\r\n<ul>\r\n<li>Modifiers: A class can be public or has default access.</li>\r\n<li>Class name: The name should begin with a initial letter (capitalized by convention).</li>\r\n<li>Superclass(if any): The name of the class’s parent (superclass), if any, preceded by the keyword extends. A class can only extend (subclass) one parent.</li>\r\n<li>Interfaces(if any): A comma-separated list of interfaces implemented by the class, if any, preceded by the keyword implements. A class can implement more than one interface.</li>\r\n<li>Body: The class body surrounded by braces, { }.</li>\r\n</ul>\r\n</li><br/>\r\n<li>\r\n<h4>Object</h4> It is a basic unit of Object Oriented Programming and represents the real life entities. A typical Java program creates many objects, which as you know, interact by invoking methods. An object consists of:<br/>\r\n<ul>\r\n<li>State : It is represented by attributes of an object. It also reflects the properties of an object.</li>\r\n<li>Behavior : It is represented by methods of an object. It also reflects the response of an object with other objects.</li>\r\n<li>Identity : It gives a unique name to an object and enables one object to interact with other objects.</li>\r\n</ul>\r\n</li>\r\n</ol>', 'home-bg.jpg', '2021-03-10 19:33:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
