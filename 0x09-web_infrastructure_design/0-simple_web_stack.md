# Simple Web Stack
![Simple web stack](simple_web_stack.drawio.png)
# Description
This is a straightforward web infrastructure hosting a website accessible through www.foobar.com. Without firewalls or SSL certificates protecting the server's network, each component, including the database and application server, must share the resources (CPU, RAM, and SSD) provided by the server.
## What is a server
A server is a computer system or software program that provides functionality or services to other devices., known as clients over network.
Servers can be used to perfom various tasks such as storing and serving files, hosting websites, managing websites, managing network resources, processing requests and more.
## The role of the domain name.
It serves as a human readable address that identifies a specific websitw on the internet. It provides a memorable way for users to access website without having to rememember the IP addresses.
They are translated to the IP address by a DNS system.
## The role of a record in www.footbar.com
The "www" represents the hostname and is associated with a DNS record, CNAME. It resolves to the canonical domain name.
## The role of a web server.
It is responsible for serving web ontent to clients such as web browsers over the internet. It handles incoming HTTP requests from clients and responds with an appropriate web pages, files, or other resources. 
## The role of application server
The application server is responsible for executing and managing the business logic, application code, and data processing of web applications. It interacts with the web server to receive requests, process them, and generate dynamic content or responses. Application servers often provide features such as session management, database access, security, and integration with other systems.
## The role of a database
The database stores and manages structured data used by web applications. It provides a persistent storage solution for storing and retrieving data, such as user information, product catalogs, transaction records, and more. The database server handles queries and transactions, ensuring data integrity, security, and reliability.
The server typically uses the HTTP (Hypertext Transfer Protocol) protocol to communicate with the computer of the user requesting the website. HTTP is the standard protocol used for transmitting and receiving web pages and other resources over the internet. It allows web servers to respond to client requests and deliver content efficiently.
# Issues with simple web stack
1 There are multiple SPOF (Single Point Of Failure) in this infrastructure.
For example, if the MySQL database server is down, the entire site would be down.

2 Downtime when maintenance needed.
When we need to run some maintenance checks on any component, they have to be put down or the server has to be turned off. Since there's only one server, the website would be experiencing a downtime.

3 Cannot scale if there's too much incoming traffic.
It would be hard to scale this infrastructure becauses one server contains the required components. The server can quickly run out of resources or slow down when it starts receiving a lot of requests.
