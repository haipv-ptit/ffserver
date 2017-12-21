��                        �  '   �  4   %  -   Z  E   �  ,   �  /   �  ,   +  &   X  	     A   �  �   �  G   `     �    �  ]   �        T   ,  r   �  �   �     �  5   �  �   �  W   �     �     �     	     !	  .   5	     d	  �  p	  K   b  S   �  P     �   S  �   �  e   }  ]   �  Q   A     �  x  �  �    �   �     �    �  �   �  *   s  �   �  �   V  �  ;     �  g  �  y  D  x   �     7     @     V     i  3   }     �   :ref:`Add advanced features <advanced>` :ref:`Choose deployment architecture <architecture>` :ref:`Configure video face detection <video>` :ref:`Create a token <token>` and :ref:`test the system work <test>` :ref:`Finalize the system with coding <api>` :ref:`Install FindFace Server <install-server>` :ref:`Install prerequisites <prerequisites>` :ref:`Prepare hardware <requirements>` Component Daemon which enables interaction with the face descriptors index. Daemon which extracts a feature vector (based on neural networks). Requires the packages with :ref:`models <models>` :program:`<findface-data>.deb`. Database which stores faces metadata, galleries details, settings, etc. Description FindFace Enterprise Server SDK consists of the :program:`Biometric Data Analysis and Recognition Server` (:program:`FindFace Server` or :program:`Server` hereinafter) and, optionally, the video face detector and other :ref:`additional components <extra-functionality>`. Follow the **9 steps** below to start delivering face recognition services to your customers: Get Started Here you can see a typical biometric system based on FindFace Enterprise Server SDK: Increase performance by setting up :ref:`nginx load balancing <load-balancing>` and :ref:`fast index <fast-index>` Local license server which interfaces with NtechLab Global License Server (for network licensing) or a USB dongle (for on-premise licensing) and passes a license to licensable components. MongoDB Nginx web server used to receive images using WebDAV. Python daemon which runs HTTP API. This daemon executes face detection functions, interfaces with ``MongoDB`` and ``findface-nnapi`` and ``tarantool@FindFace`` daemons. The FindFace Server functioning is provided by interaction of the following components: ``NTLS`` ``findface-facenapi`` ``findface-nnapi`` ``findface-upload`` ``tntapi`` (``tarantool@FindFace`` as a shard) |system_en| Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-12-20 17:51+0300
PO-Revision-Date: 2017-12-20 18:11+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 :ref:`настройка расширенных функций <advanced>`; :ref:`выбор архитектуры развертывания <architecture>`; :ref:`настройка обнаружения лиц на видео <video>`; :ref:`создание токена авторизации <token>` and :ref:`тестирование работы сервера <test>`; :ref:`создание интерфейса обмена данными между Сервером и партнерским приложением <api>`; :ref:`установка лицензии и компонентов Сервера <install-server>`; :ref:`установка необходимого стороннего ПО <prerequisites>`; :ref:`подготовка физических серверов <requirements>`; Компонент Сервис, обеспечивающий взаимодействие между сервисом ``findface-facenapi`` и базой биометрических данных на основе Tarantool. Для увеличения скорости поиска на каждом сервере с базой данных Tarantool могут быть созданы многочисленные сегменты («шарды») ``tntapi``. Их параллельное функционирование приводит к значительному увеличению производительности (в 70-100 раз). Сервис, выполняющий посредством нейронных сетей извлечение вектора признаков (биометрического образца) из обнаруженных лиц, а также распознавание пола, возраста и эмоций. Требует установки пакетов с :ref:`моделями нейронных сетей <models>` :program:`<findface-data>.deb`. База данных, в которой хранятся метаданные лиц, подробная информация о галереях, настройки, векторы признаков и т. д. Описание FindFace Enterprise Server SDK включает в себя :program:`Сервер анализа и распознавания биометрических данных` (далее :program:`Сервер FindFace` или :program:`Сервер`) и, опционально, видеодетектор для обнаружения лиц в видеопотоке (устанавливается как компонент ``fkvideo_detector``) и другие :ref:`дополнительные компоненты <extra-functionality>`. Интеграция FindFace Enterprise Server SDK включает в себя следующие основные этапы: Приступая к интеграции Структура системы анализа и распознавания лиц на базе FindFace Enterprise Server SDK показана на следующей схеме: увеличение производительности :ref:`балансировкой нагрузки на компоненты <load-balancing>` и :ref:`индексированием базы данных <fast-index>`; Локальный сервер лицензий с управлением через веб-интерфейс, взаимодействующий для верификации лицензий с глобальным центром лицензий NtechLab. Для закрытых систем поддерживается работа с аппаратными лицензионными ключами. MongoDB Веб-сервер на базе nginx, который принимает изображения через WebDAV. Устанавливается, если требуется хранить исходные загруженные изображения, миниатюры и нормализованные изображения лиц на Сервере. Реализованный на Python сервис, обеспечивающий функционирование HTTP API. Данный сервис выполняет функцию обнаружения лиц на фотографиях, взаимодействует с базой данных MongoDB и сервисами ``findface-nnapi`` и ``tarantool@FindFace``. Работу Сервера в свою очередь обеспечивают следующие компоненты: ``NTLS`` ``findface-facenapi`` ``findface-nnapi`` ``findface-upload`` ``tntapi`` (``tarantool@FindFace`` как шард) |system_ru| 