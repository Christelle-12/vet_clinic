<a name="readme-top"></a>

<div align="center">

  <h1><b>vet_clinic database</b></h1>

</div>
<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [vet_clinic database] <a name="about-project"></a>
[Vet_clinic_database] is a database based project which uses PostGreSQL, I used a relational database to create the initial data structure for a vet clinic. I also created a table to store animals' information, insert some data into it, and query it.

## 🛠 Built With <a name="built-with"></a>
<li>PostgreSQL</li>
<li>Github</li>
<li>GitFlow</li>
<li>SQL</li>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">Express.js</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

Table of animals that contains: id, name, date of birth, escape attempts, neutered, weight in kgs columns

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

### Prerequisites

In order to run this project you need:
PostGreSQL installer
Github account

### Setup

Open psql
create a new database using CREATE DATABASE vet_clinic

```sh
  cd vet_clinic
  git clone https://github.com/Christelle-12/vet_clinic.git
```

### Install

Install this project with:
[psql installer](https://www.postgresql.org/download/)

### Usage

To run the project, execute the following command:



```sh
  \c vet_clinic
```

### Run tests

To run tests, run the following command:
no tests required.

### Deployment

You can deploy this project using:
No deployment so far,

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Nirere Marie Christelle**
- GitHub: [@Christelle-12](https://github.com/Christelle-12)
- Twitter: [@Chr1Nirere](https://twitter.com/Chr1Nirere)
- LinkedIn :[LinkedIn](https://www.linkedin.com/in/nirere-marie-christelle-9b139823b/)

👤 **Basir Elham**
- GitHub: [@Elhambasir](https://github.com/Elhambasir)
- LinkedIn :[LinkedIn](https://www.linkedin.com/in/basirelhamahmadi)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Make use of many-to-many relationships of tables]**
- [ ] **[write more complex queries ]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Christelle-12/vet_clinic/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, you can show your support by giving this project's repository a star on [github](https://github.com/Christelle-12/vet_clinic.git).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for the outstanding collection of information they have provided that enabled me to create the project. In addition, I would like to also thank the team for outstanding work in implementing the requirements of this project. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
