��          �                 �     w   �  �   g     :  e   K  �   �  �   a  �     #   �  X     N   \  �   �  �   ^     �        �    �   
  �     5  �     �  �       �  ,  �  )  �  X     �   t  d   /    �  �   �  S   �  h   �   Apply the IP address replacement script to the ``photo``, ``normalized``, and ``thumbnail`` fields of the face objects. In the case study, the IP address ``127.0.0.1`` is being replaced with ``192.168.2.158``. Each face object in the :ref:`MongoDB <start>` database is provided with the following links to the ``Uploads`` folder: If the ``findface-upload`` host IP address happens to change, the links to the ``Uploads`` folder get broken, and the original images and artifacts can no longer be displayed in the :ref:`web interface <ffui>`. In this section: Invoke a random face object once more to make sure that the IP address has been successfully changed. Invoke a random face object to make sure that the old IP address is still in use in its ``photo``, ``normalized``, and ``thumbnail`` fields  (``127.0.0.1`` in the case study). Issue: Original images, face thumbnails, and face normalized images are not displayed in the FindFace web interface after the ``findface-upload`` host IP address has been changed. Issues with the ``findface-upload`` component result in unavailability of the ``Uploads`` folder content at ``http://<findface_upload_IP:3333/uploads/`` and in the :ref:`FindFace web interface <ffui>`. Link to the relevant original image Links to the relevant FindFace Server artifacts: the face thumbnail and normalized image On the console, navigate into MongoDB and then into the ``facenapi`` database. The ``Uploads`` folder contains the original images which have been processed by FindFace Server, and the FindFace Server artifacts such as face thumbnails and normalized images. To fix the problem, bulk-edit the links in the ``photo``, ``thumbnail`` and ``normalized`` fields of the face objects in MongoDB as follows: Troubleshoot Uploads Uploads in FindFace Web UI Project-Id-Version: FindFace Enterprise Server SDK 2.5
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-12-20 17:51+0300
PO-Revision-Date: 2017-12-21 13:05+0300
Last-Translator: Sasha Carlos <info@ntechlab.com>
Language: ru
Language-Team: NtechLab Documentation Team
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Примените скрипт замены IP-адреса к полям ``photo``, ``normalized`` и ``thumbnail`` объектов типа ``лицо``. В примере IP-адрес ``127.0.0.1`` заменяется на ``192.168.2.158``. Каждый объект типа ``лицо`` в базе данных :ref:`MongoDB <start>` содержит следующие ссылки на папку ``Uploads``: При изменении IP-адреса сервера ``findface-upload`` ссылки на папку ``Uploads`` теряют актуальность и исходные изображения и артефакты больше не отображаются в :ref:`веб-интерфейсе <ffui>`. В этом разделе: Вызовите случайный объект типа ``лицо`` еще раз, чтобы убедиться, что IP-адрес был успешно изменен. Вызовите случайный объект типа ``лицо``, чтобы убедиться, что прежний IP-адрес все еще используется в полях ``photo``, ``normalized`` и ``thumbnail`` (``127.0.0.1`` в примере). Проблема: Исходные изображения, миниатюры лиц и нормализованные изображения лиц не отображаются в веб-интерфейсе FindFace после изменения IP-адреса сервера ``findface-upload``. Неполадки при работе компонента ``findface-upload`` приводят к недоступности содержимого папки ``Uploads`` на странице ``http://<findface_upload_IP:3333/uploads/`` и в :ref:`веб-интерфейсе FindFace <ffui>`. Ссылка на соответствующее исходное изображение Ссылки на соответствующие артефакты Сервера FindFace: миниатюру лица и нормализованное изображение лица В консоли перейдите в MongoDB и затем в базу данных ``facenapi``. Папка ``Uploads`` содержит обработанные Сервером исходные изображения и артефакты Сервера, такие как миниатюры и нормализованные изображения лиц. Для решения проблемы отредактируйте ссылки в полях ``photo``, ``thumbnail`` и ``normalized`` всех объектов типа ``лицо`` в MongoDB следующим образом: Устранение неполадок при работе с папкой Uploads Отображение содержимого папки Uploads в веб-интерфейсе FindFace 