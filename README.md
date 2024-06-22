# NobelSolution Assesment


## Description
Solution for the Nobel Asseesment
Architecture explain:</br>
I Have 6 projects based on DDD and MVC:
</br>
WebAPI -> Layer with Api swagger, controller, configurations.</br>
WebApplication -> Front-End.</br>
Applicaton - > Bussiness Logic Layer.</br>
Core -> Models, Dto, Entities and Interfaces of Business, Interfaces of Services, Interfaces of WebServices and Interfaces of Repositorys</br>
Infraestructure -> Persistence, Services, Contexts and Repositorys.</br>
UnicFiles -> The consolo Log project asked on Assesment.</br>
</br>
We have also 2 extra folders</br>
SQLFiles -> Sql resolutions PT1 e PT2 from assesment.</br>
LogAnalyzes -> LOG resolutions from assesment.</br>

## 🚀 Installation/Implemetation
To run project in local you should have instaled the SDK for .net core 6, setup the startup to run both WepApi and WebApplication simultaniosly or enter in WebApi folder and run the comand below:
```PowerShell | CMD

start dotnet run
cd ..\WebApplication 
start dotnet run

```


## 📋 Usage
The Swagger is ready to use, if you run the project as Debug mode it will be not necessary to authenticate to call other methods, but if you dont, you have to authenticate with a login and password, use the MockUsers.cs to add more users, you can use teste1@email.com with 123456 for password for tests.
The Front-End is integrated with back end, so if you run both yoi should be able to use front end in the localhost and port indicated in your powershell. if you need to change de port and url of api in front end update the file apiService.js
![image](https://github.com/eduardomk9/NobelAssesment/assets/15438089/0cc1c88e-5fac-417e-9d1c-6cf6928dae4f)
<img width="1277" alt="image" src="https://github.com/eduardomk9/NobelAssesment/assets/15438089/8faa7bb8-0656-420f-889d-c112704eaf44">




## 🤝 TODO list
Test Layer;</br>
Cloud publish(Dockerfile and conteinerization);</br>
Generics CRUDs;</br>

## ☝️ Sugestions
A Framework for styles;</br>

## 🖥️ Used Technologies
NET CORE 6;</br>
MS-SQL SERVER;</br>
Data Annotations;</br>
Entity Framework;</br>
Swagger;</br>
JWT;
Javascript;</br>
CSS;</br>

## 📝 License
Only for study and non-distributable.

# [PT-BR]

## Descrição
Solução para a Avaliação Nobel
Arquitetura explicada:</br>
Eu tenho 6 projetos baseados em DDD e MVC:
</br>
WebAPI -> Camada com Api swagger, controlador, configurações.</br>
WebApplication -> Front-End.</br>
Application -> Camada de Lógica de Negócios.</br>
Core -> Modelos, Dto, Entidades e Interfaces de Negócios, Interfaces de Serviços, Interfaces de WebServices e Interfaces de Repositórios.</br>
Infrastructure -> Persistência, Serviços, Contextos e Repositórios.</br>
UnicFiles -> O projeto de Log em console solicitado na Avaliação.</br>
</br>
Também temos 2 pastas extras:</br>
SQLFiles -> Resoluções SQL PT1 e PT2 da avaliação.</br>
LogAnalyzes -> Resoluções de LOG da avaliação.</br>

## 🚀 Instalação/Implementação
Para rodar o projeto localmente você deve ter o SDK para .net core 6 instalado, configurar o startup para rodar tanto o WebApi quanto o WebApplication simultaneamente ou entrar na pasta WebApi e rodar o comando abaixo:



## 📋 Uso
O Swagger está pronto para uso, se você rodar o projeto no modo Debug não será necessário autenticar para chamar outros métodos, mas se você não fizer isso, terá que autenticar com um login e senha, use o MockUsers.cs para adicionar mais usuários, você pode usar teste1@email.com com 123456 como senha para testes.
O Front-End está integrado com o back end, então se você rodar ambos, deverá conseguir usar o front end no localhost e na porta indicada no seu powershell. Se precisar mudar a porta e a URL da API no front end, atualize o arquivo apiService.js.
![image](https://github.com/eduardomk9/NobelAssesment/assets/15438089/0cc1c88e-5fac-417e-9d1c-6cf6928dae4f)
<img width="1277" alt="image" src="https://github.com/eduardomk9/NobelAssesment/assets/15438089/8faa7bb8-0656-420f-889d-c112704eaf44">


## 🤝 Lista de Tarefas
Test Layer;</br>
Publicação na Nuvem (Dockerfile e conteinerização);</br>
CRUDs Genéricos;</br>

## ☝️ Sugestões
Um Framework para estilos;</br>

## 🖥️ Tecnologias Usadas
NET CORE 6;</br>
MS-SQL SERVER;</br>
Data Annotations;</br>
Entity Framework;</br>
Swagger;</br>
JWT;</br>
Javascript;</br>
CSS;</br>

## 📝 Licença
Apenas para estudo e não distribuível.
