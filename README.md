# Experiment Overview

This experiment is part of the Software Engineering and Practice course in the Computer Science and Technology program at Shandong University, Qingdao. Each lab file includes experiment requirements and corresponding completed results.

## Experiment List

### Lab 1: [Team Establishment and Project Selection](lab1/lab1_requirement.pdf)
   - Team (group) establishment
   - Discussion and selection of course projects
   - Conducted feasibility analysis of the project and wrote feasibility analysis report (draft)

### Lab 2: [Project Communication and Investigation](lab2/lab2_requirement.pdf)
   - Continued project communication and investigation, and revised feasibility analysis report
   - Investigate CASE software tools and learn how to use them

### Lab 3: [Traditional vs. Agile Development](lab3/lab3_requirement.pdf)
   - Discuss the traditional software development process model and agile development
   - Understand Scrum development methods
   - Complete the feasibility analysis report

### Lab 4: [XP Development and DevOps](lab4/lab4_requirement.pdf)
   - Understand XP development methods
   - Understand DevOps
   - Understand project activity diagrams

### Lab 5: [Project Activity Charts and Management](lab5/lab5_requirement.pdf)
   - Get a deep understanding of the project activity chart
   - Practice using project tracking tools
   - Discuss human resource management and organizational structure

### Lab 6: [Workload Estimation, Risk Management, Software Requirements Specification SRS (1)](lab6/lab6_requirement.pdf)
   - Workload estimation
   - Risk management
   - Learn the requirements and structure of the SRS document

### Lab 7: [Software Requirements Specification SRS (2)](lab7/lab7_requirement.pdf)
   - Write the first SRS draft of your project
   - Learn the requirements and features of the latest software requirements Specification SRS document
   - Practice using various static modeling tools (E-R, UML, etc.) to model the project in charge and communicate with users

### Lab 8: [Software Requirements Specification SRS (3)](lab8/lab8_requirement.pdf)
   - Learn the basic knowledge of Petri Net and how to apply Petri net modeling
   - Practice using various dynamic modeling tools (state diagram, Petri Net, data flow diagram, OCL logic, etc.) to model the project in charge
   - Improve your project's SRS

### Lab 9: [UML, Logic, Software Architecture Design (1)](lab9/lab9_requirement.pdf)
   - Deep understanding of UML
   - Understand logic in computer science
   - Learn to compare Software Architecture Design GB with IEEE's latest Software Architecture Document (SAD) standards
   - Study classic software architecture cases
   - Complete SRS for your own project

### Lab 10: [Software Architecture Design (2)](lab10/lab10_requirement.pdf)
   - Architecture style and view characteristics
   - Study classic software architecture cases
   - Continue to supplement and modify the SAD of their own projects

### Lab 11: [Software Architecture Design (3)](lab11/lab11_requirement.pdf)
   - In-depth understanding of architecture design and evaluation of improvements
   - Complete SAD 

### Lab 12: [Design Module (1)](lab12/lab12_requirement.pdf)
   - Cultivate the ability to practice design principles
   - Learn about dependency injection

### Lab 13: [Design Module (2)](lab13/lab13_requirement.pdf)
   - Object-oriented design principles
### Lab 14: [Design Module (3)](lab14/lab14_requirement.pdf)
   - Learning design patterns, can use design patterns in project design for object-oriented design

## PMS deployment
### Envs:
+ python >= 3.6
+ mysql 8
+ django == 3.2.7
+ pymysql
### Steps:
1. 将项目pull到本地
2. 在本地mysql创建用于本项目的空数据库，并在settings.py中配置
3. 在项目根目录执行命令用于数据迁移
```
python manage.py makemigrations
python manage.py migrate
```
4. 在项目根目录执行命令，运行项目
```
python manage.py runserver
```

## Contact Information

If you have any questions or suggestions about the experiment content, please feel free to contact us.

- Email: haoma2772@gmail.com

## Copyright Statement

The experiment content is protected by copyright. Unauthorized reproduction or use for other purposes is prohibited.
