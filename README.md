<p align="center">
  <a href="" rel="noopener">
 <img width=300px height=169px src="https://res.cloudinary.com/practicaldev/image/fetch/s--aLMLGcII--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/xgrx36xi5jexzmlugxg5.png" alt="Project logo"></a>
</p>

<h3 align="center">Automation Appium With Robot Framework</h3>

---

<p align="center"> This project is an example how to execute automation using Appium with Robot Framework
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Authors](#authors)
- [Evidence Test](#evidence)

## 🧐 About <a name = "about"></a>

In this project, we will be automating the login and registration modules of a sample application using Appium and Robot Framework. The sample application may be any mobile application that requires user authentication to access its features.

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them.
- First things first, you should install the Python first, you can download [here](https://www.python.org/)

- Next, install the Appium, you can download [here](https://appium.io/docs/en/2.2/quickstart/install/)

- Then, install the library what we need to run the project. You can use command:
    ```
    pip3 install -r prerequisites.txt
    robot --version
    ```

## 🔧 Running the tests <a name = "tests"></a>

To running the test, please follow this steps:
- Turn on your Android Emulator or you can use real device

- Turn on your Appium Desktop or Appium Server or you can using Appium in terminal:
    ```
    appium
    
    // Successfully on the Appium
    [Appium] Welcome to Appium v1.22.3
    [Appium] Appium REST http interface listener started on 0.0.0.0:4723
    ```
- Finally, you can start the test using:
    ```
    robot -d Result --loglevel TRACE Tests/login-test.robot
    ```


## ⛏️ Built Using <a name = "built_using"></a>

- [RobotFramework](https://robotframework.org/) - Automation Framework
- [Python](https://www.python.org/) - Programming Language
- [Appium](https://appium.io/) - Library Automation

## ✍️ Authors <a name = "authors"></a>
- https://github.com/gobearjr

## Evidence Test <a name = "proof"></a>
![](Proof/final-proof.gif)