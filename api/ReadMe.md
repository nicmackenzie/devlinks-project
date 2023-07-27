# DevLinks

This is a Web Application that will help developers get full time or part time jobs from prospective employers.

## Table of contents

- [Overview](#overview)
  - [Frontend Link](#features)
  - [Features](#features)
  - [App functionality](#app-functionality)
- [My process](#my-process)
  - [Built with](#built-with)
  - [API Endpoints](#api-endpoints)
- [Acknowledgments](#acknowledgments)

## Overview

### Frontend GitHub Repo

[React Code](https://github.com/nicmackenzie/devlinks-frontend)

### App Features

- A Home page that will render all registered developers and display their profile details.
- User sign up and registration
- Developers can update their profile and update their professional links.

## My process

### Built with

- Sinatra For the Backend API
- React For the Frontend

### API Endpoints

For this application, seven(8) endpoints were used. These endpoints are:

```text
/login - POST
/signup  - POST
/users - GET
/user/delete/:id - DELETE;
/stacks - GET
/stacks/user/:id - GET;
/users/edit/:id - PATCH
/users/updatelinks/:id - POST
```

## Acknowledgments

Special thanks to the team from [Frontend Mentor](https://www.frontendmentor.com/challenges) for the project idea which was borrowed from one of the challenges.
