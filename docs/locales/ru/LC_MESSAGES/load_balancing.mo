��          �               �  	  �     �  	   G  �   Q  &   �       "     3   ;    o  �   r  �  �     �  :   �  B   �  (        H  #   W  �   {  �   1	  �   �	  >  �
  \        p     �     �  �  �  x  �  2       J  �   ]  D   	  7   N  F   �  `   �  �  .  �   �  5  �  A   
  s   L  �   �  z   [  !   �  ;   �    4  �  T  �  �    �  �   �!     �"     �"     �"   1 is usually enough. When it comes to findface-facenapi, load balancing is usually set up only in a cluster environment with several findface-facenapi hosts, 1 findface-facenapi instance running on each host. In this case, traffic is distributed across these hosts. 1, automatically load-balanced. Set up load balancing only across extraction-api instances located on different physical hosts. Component Copy the content of the ``/lib/systemd/system/findface-nnapi.service`` file into a new file ``/etc/systemd/system/findface-nnapi@.service``. Create a new nginx configuration file. Do the following: Enable the load balancer in nginx. For each findface-nnapi instance, enable autostart. From now on, requests sent to findface-nnapi will be distributed over 2 findface-nnapi instances in the round-robin mode. You can view the process of requests distribution in the findface-nnapi log file /var/log/syslog (look for different process_id values). If necessary, install nginx on the findface-nnapi host (nginx is installed automatically along with the ``findface-upload`` component). Insert the following `entry <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/nnapi>`__ into the configuration file. In the entry, substitute the provided ports for the ``findface-nnapi`` instances (``upstream nnapibackends``) and the ``findface-nnapi`` listening port (``listen``) with their actual values. The port numbers should be unique for each component on the host. Load Balancing with NginX Load balancing can be set up for the following components: Number of CPU cores minus 1. Gives a significant performance gain. Recommended number of instances per host Restart nginx. Start the findface-nnapi instances. Stop all the ``findface-nnapi`` services and disable their autostart. Edit the new file ``findface-nnapi@.service`` by appending ``--listen 127.0.0.1:%i`` to the ``ExecStart`` line. The following step-by-step instructions demonstrate how to set up nginx load balancing for 2 ``findface-nnapi`` instances on a host. The other components can be load-balanced by analogy. To enhance throughput and reduce latency in highload installations with severe requirements to resource optimization, we recommend you to set up `nginx load balancing <https://www.nginx.com/resources/admin-guide/load-balancer/>`__. With load balancing, traffic, instead of being directed to a single instance of a component, is proxied via nginx and distributed across multiple instances of the component in a round-robin fashion. As a result, you remarkably reduce latency and improve overall performance, scalability and reliability of your system. You can use this method to set up load balancing across instances on several physical hosts. ``extraction-api`` ``findface-facenapi`` ``findface-nnapi`` Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-12-11 17:48+0300
PO-Revision-Date: 2017-12-11 18:06+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Одного экземпляра на сервер обычно бывает достаточно. Применительно к компоненту ``findface-facenapi`` нагрузка обычно балансируется только в кластерной среде между несколькими физическими серверами ``findface-facenapi``. 1 (нагрузка балансируется автоматически). Балансировка нагрузки через nginx применяется только к экземплярам ``extraction-api``, установленным на различных физических серверах. Компонент Скопируйте содержимое файла ``/lib/systemd/system/findface-nnapi.service`` в новый файл ``/etc/systemd/system/findface-nnapi@.service``. Создайте новый файл конфигурации nginx. Выполните следующие действия: Включите балансировщик нагрузки в nginx. Добавьте каждый экземпляр ``findface-nnapi`` в автозагрузку. Теперь запросы, отправленные в ``findface-nnapi``, будут распределяться между двумя экземплярами ``findface-nnapi`` в режиме round-robin. Распределение запросов наглядно отображается в логе ``findface-nnapi`` ``/var/log/syslog`` (обратите внимание на различные значения id процессов). При необходимости установите nginx на серверы с ``findface-nnapi`` (nginx устанавливается автоматически вместе с компонентом ``findface-upload``). Вставьте следующий `текст <https://raw.githubusercontent.com/NTech-Lab/FFSER-file-examples/master/nnapi>`__ в файл конфигурации. В тексте замените номера портов, предложенные для экземпляров ``findface-nnapi`` (``upstream nnapibackends``), и номер слушающего порта (``listen``) на актуальные значения. Номера портов должны быть уникальны для каждого компонента на сервере. Балансировка нагрузки с помощью NginX Нагрузка может быть сбалансирована для следующих компонентов: Количество ядер процессора минус 1. Дает значительный выигрыш в производительности. Рекомендуемое количество экземпляров на одном физическом сервере Перезапустите nginx. Запустите экземпляры ``findface-nnapi``. Остановите все сервисы ``findface-nnapi`` и удалите их из автозагрузки. Отредактируйте новый файл ``findface-nnapi@.service``, добавив в конец строки ``ExecStart`` опцию ``--listen 127.0.0.1:%i``. Приведенная ниже пошаговая инструкция демонстрирует настройку балансировки нагрузки через nginx для 2-х экземпляров ``findface-nnapi`` на одном физическом сервере. Нагрузка остальных компонентов может быть сбалансирована по аналогии. Для увеличения производительности и уменьшения времени обработки запросов в высоконагруженных системах с повышенными требованиями к оптимизации ресурсов рекомендуется настроить `балансировку нагрузки с помощью nginx <https://www.nginx.com/resources/admin-guide/load-balancer/>`__. Если нагрузка балансируется, входящий поток запросов вместо того, чтобы направиться на обработку в единственный экземпляр компонента, проходит через прокси-сервер и распределяется между несколькими экземплярами этого компонента в режиме round-robin (циклически). Результатом является значительное уменьшение времени ожидания обработки запроса, а также улучшение общей производительности, масштабируемости и надежности системы. Вы можете использовать данный метод для балансировки нагрузки между экземплярами компонента на различных физических серверах. ``extraction-api`` ``findface-facenapi`` ``findface-nnapi`` 