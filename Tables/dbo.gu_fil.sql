﻿CREATE TABLE [dbo].[gu_fil] (
  [№ п/п] [nvarchar](50) NULL,
  [Дата монтажа указанная Исполнителем] [datetime] NULL,
  [Статус работ] [nvarchar](50) NULL,
  [Ответственный сотрудник] [nvarchar](50) NULL,
  [Дата осмотра] [datetime] NULL,
  [Факт установки ГУ] [nvarchar](50) NULL,
  [Уникальный номер информационного указателя] [nvarchar](50) NULL,
  [Тип городского указателя] [nvarchar](50) NULL,
  [Округ] [nvarchar](50) NULL,
  [Населённый пункт] [nvarchar](150) NULL,
  [Район] [nvarchar](50) NULL,
  [Улица, просп, пер и проч] [nvarchar](50) NULL,
  [Дом, корп, стр и проч] [nvarchar](50) NULL,
  [Улица с односторонним движением] [nvarchar](50) NULL,
  [В случае установки на тротуаре, его измеренная ширина (м)] [nvarchar](50) NULL,
  [Оценочная ширина тротуара] [nvarchar](50) NULL,
  [Расстояние от опоры (либо от центра бетонного основания) до края] [nvarchar](50) NULL,
  [Тип поверхности установки] [nvarchar](50) NULL,
  [Проходимость] [nvarchar](50) NULL,
  [Реконструкция] [nvarchar](50) NULL,
  [Просматриваемость] [nvarchar](50) NULL,
  [Состояние ГУ] [nvarchar](50) NULL,
  [Ориентация ГУ] [nvarchar](50) NULL,
  [Соответствие факт. места установки тех. Паспорту] [nvarchar](50) NULL,
  [Расстояние до места установки по отметке тех паспорта (м.)] [nvarchar](50) NULL,
  [По просматриваемости] [nvarchar](50) NULL,
  [По отсутствию нависания над проезжей частью] [nvarchar](50) NULL,
  [По ширине тротуара в месте установки] [nvarchar](50) NULL,
  [По расположению относительно зеленых насаждений] [nvarchar](50) NULL,
  [По расстоянию от входа в транспортные узлы и дома] [nvarchar](50) NULL,
  [По расстоянию до края велосипедной дорожки] [nvarchar](50) NULL,
  [По содержанию] [nvarchar](50) NULL,
  [По количеству и правильному расположению] [nvarchar](50) NULL,
  [Количество информационных полей] [nvarchar](50) NULL,
  [Текущее количество плашек] [int] NULL,
  [Наличие модуля с картой местности] [nvarchar](50) NULL,
  [Оформление основания] [nvarchar](50) NULL,
  [Территория] [nvarchar](50) NULL,
  [Размер бетонного блока длина] [nvarchar](50) NULL,
  [Размер бетонного блока ширина] [nvarchar](50) NULL,
  [Площадь восстановительных работ после заглубления] [nvarchar](50) NULL,
  [Вывоз техники, инвентаря, оборудования] [nvarchar](50) NULL,
  [Иные нарушения требований технических правил к городским указате] [nvarchar](50) NULL,
  [Заключение] [nvarchar](max) NULL,
  [Тип нарушения внешнего вида и технического состояния] [nvarchar](max) NULL,
  [Дата направления замечания в ИЛИОН] [date] NULL,
  [Замечания камеральной проверки] [nvarchar](max) NULL,
  [Дата направления замечания камеральной проверки в ИЛИОН] [date] NULL,
  [Устранение замечаний камеральной проверки] [nvarchar](50) NULL,
  [Примечание] [nvarchar](max) NULL,
  [Программа] [nvarchar](500) NULL,
  [Координата X (ЕГКО)] [nvarchar](50) NULL,
  [Координата Y (ЕГКО)] [nvarchar](50) NULL,
  [Адрес установки ГУсуществует в Москве] [nvarchar](50) NULL,
  [Наименования и нарпавления указанные на инф. полях верны] [nvarchar](50) NULL,
  [Место фактической установки соответствует отметке на карте в нов] [nvarchar](50) NULL,
  [ФИО сотрудника, присвоевшего координаты] [nvarchar](50) NULL,
  [ФИО сотрудника проверившего информационные поля] [nvarchar](50) NULL,
  [Отметка о занесении в АСУ (Инвентарный номер)] [nvarchar](50) NULL,
  [Дата занесения информации в АСУ] [datetime] NULL,
  [Сотрудник занесший данные в АСУ] [nvarchar](50) NULL,
  [Дата установки ДУ по графику ДЖКХиБ] [datetime] NULL,
  [Год реализации по госконтрату] [int] NULL,
  [Этап работ] [nvarchar](50) NULL,
  [Мероприятие в рамках которого установлен ДУ] [nvarchar](500) NULL,
  [Планируемая Исполнителем дата монтажа] [nvarchar](50) NULL,
  [Дата поступления информация в отдел мониторинга] [datetime] NULL,
  [Площадь бетонного блока (кв.м)] [nvarchar](50) NULL,
  [Должность сотрудника обследовавшего ДУ] [nvarchar](50) NULL,
  [Должность сотрудника занесшего нформацию в АСУ] [nvarchar](50) NULL,
  [Счетчик дополнительного номера] [nvarchar](50) NULL,
  [Формирование первой части УН] [nvarchar](50) NULL,
  [Вычисление количества знаков во второй части УН] [nvarchar](50) NULL,
  [Количество нулей подстановки во второй части УН] [nvarchar](50) NULL,
  [Формирование необходимого количества нулей для сцепки] [nvarchar](50) NULL,
  [Сцепка (готовая вторая часть УН)] [nvarchar](50) NULL,
  [Сцепка (полный УН)] [nvarchar](50) NULL,
  [Дата отправки информации Исполнителю] [datetime] NULL,
  [Содержание информационных полей. Блок 1, сторона А] [nvarchar](max) NULL,
  [Содержание информационных полей. Блок 1, сторона Б] [nvarchar](max) NULL,
  [Содержание информационных полей. Блок 2, сторона А] [nvarchar](max) NULL,
  [Содержание информационных полей. Блок 2, сторона Б] [nvarchar](max) NULL,
  [Содержание информационных полей. Блок 3, сторона А] [nvarchar](max) NULL,
  [Содержание информационных полей. Блок 3, сторона Б] [nvarchar](max) NULL,
  [Содержание информационных полей. Блок 4, сторона А] [nvarchar](max) NULL,
  [Содержание информационных полей. Блок 4, сторона Б] [nvarchar](max) NULL,
  [Фото стороны А] [nvarchar](50) NULL,
  [Фото стороны Б] [nvarchar](50) NULL,
  [Фото текста 1] [nvarchar](50) NULL,
  [Фото текста 2] [nvarchar](50) NULL,
  [Фото текста 3] [nvarchar](50) NULL,
  [Фото текста 4] [nvarchar](50) NULL,
  [Фото замечания] [nvarchar](50) NULL,
  [Карта] [nvarchar](50) NULL,
  [Принято] [date] NULL,
  [Оплачено] [date] NULL,
  [паспорт_первый] [int] NULL,
  [паспорт] [int] NULL,
  [паспорт_согл] [int] NULL,
  [макет] [int] NULL,
  [макет_согл] [int] NULL,
  [Инвентарный номер] [nvarchar](50) NULL,
  [ОКОФ] [nvarchar](50) NULL,
  [Амортизационная группа] [nvarchar](50) NULL,
  [Способ начисления амортизации] [nvarchar](50) NULL,
  [Дата принятия к учету] [date] NULL,
  [Состояние] [nvarchar](50) NULL,
  [Мес. норма %] [float] NULL,
  [Срок полезного использо вания (мес.)] [int] NULL,
  [Процент износа] [float] NULL,
  [Балансовая стоимость] [money] NULL,
  [Кол-во] [int] NULL,
  [Сумма амортизации] [money] NULL,
  [Остаточная стоимость] [money] NULL,
  [ID] [int] IDENTITY NOT FOR REPLICATION,
  [ts] [timestamp],
  [update_d] [datetime] NOT NULL,
  [AOGUID] [uniqueidentifier] NULL,
  [HOUSEGUID] [uniqueidentifier] NULL,
  [WGS84] [geography] NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO