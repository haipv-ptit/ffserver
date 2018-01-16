��          �               L     M  P   i  �   �  =   J  #   �  !   �  .   �     �  j     %   p  �  �  #   &      J     k  �   �  9   T  �   �  n   N  �  �  P   �	  n    
    o
  �   v  ]   �  W   X  S   �       �   "  v     4    T   �  4   	  ,   >  �  k  �   �  �   q    a   Connect to Existing MongoDB Create a list file (/etc/apt/sources.list.d/mongodb-org-3.4.list ) for MongoDB:: If you wish to establish connection to an existing MongoDB instance, specify its IP address in the :ref:`network settings <configure-network>`. Import the public key used by the package management system:: Install MongoDB on Application Host Install MongoDB on Dedicated Host Install the latest stable version of MongoDB:: MongoDB On the dedicated host, install MongoDB in the same manner as on the :ref:`application host <mongodb-app>`. Open the MongoDB configuration file:: Prior to installing FindFace Server, set up a database for it. You may install MongoDB either on the application host where the findface-facenapi component resides, or on a dedicated host. For the standalone architecture, we recommend you the first option. FindFace Enterprise Server SDK is compatible with `MongoDB 3.2 <https://docs.mongodb.com/v3.2/tutorial/install-mongodb-on-ubuntu/>`_ or later. Reload the local package database:: Restart the ``mongod`` service:: Start the ``mongod`` service:: To allow for incoming connections, comment out the line bind_ip = 127.0.0.1. This will allow MongoDB to accept connections from any IP address. Ensure that the only access to the host is from the LAN:: To install MongoDB on a dedicated host, do the following: To install a different version of MongoDB, please refer to that version’s documentation. For example, see version `3.2 <https://docs.mongodb.com/v3.2/tutorial/install-mongodb-on-ubuntu/>`_. To install the latest stable version of MongoDB (3.4 at the moment) on the application host, do the following: Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-08 12:33+0300
PO-Revision-Date: 2018-01-16 12:18+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Подключение к существующей базе данных MongoDB Создайте список пакетов для MongoDB ``/etc/apt/sources.list.d/mongodb-org-3.4.list``:: При подключении к существующей базе данных MongoDB необходимо указать IP-адрес соответствующего сервера в :ref:`настройках конфигурации <configure-network>`. Импортируйте ключ подписи, используемый системой управления пакетами:: Установка базы данных MongoDB на сервере с ``findface-facenapi`` Установка базы данных MongoDB на удаленном сервере Установите последнюю стабильную версию MongoDB:: База данных MongoDB На удаленном сервере установите последнюю стабильную версию MongoDB по аналогии с :ref:`установкой на сервере с findface-facenapi <mongodb-app>`. Откройте для редактирования файл конфигурации базы данных MongoDB:: Перед установкой компонентов Сервера необходимо установить базу данных MongoDB, которая будет служить внутренней базой данных Сервера. Вы можете установить базу данных MongoDB на одном сервере с компонентом ``findface-facenapi`` или на удаленном сервере. Если FindFace Enterprise Server SDK развертывается на одном физическом сервере, база данных MongoDB устанавливается там же. FindFace Enterprise Server SDK совместим с `MongoDB 3.2 <https://docs.mongodb.com/v3.2/tutorial/install-mongodb-on-ubuntu/>`_ и более поздними версиями. Перезагрузите локальную базу данных пакетов:: Перезапустите сервис ``mongod``:: Запустите сервис ``mongod``:: Для того чтобы разрешить входящие подключения к базе данных со всех IP-адресов, закомментируйте строку ``bind_ip = 127.0.0.1``. Убедитесь, что доступ к серверу с установленной базой данных возможен только из локальной сети. Для установки MongoDB на удаленном сервере выполните следующие действия: Для установки другой версии MongoDB ознакомьтесь с документацией по этой версии, например, с `3.2 <https://docs.mongodb.com/v3.2/tutorial/install-mongodb-on-ubuntu/>`_. Для установки последней стабильной версии MongoDB (на данный момент 3.4) на одном сервере с компонентом ``findface-facenapi`` выполните следующие действия: 