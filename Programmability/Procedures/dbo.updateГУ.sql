﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		@[Author,,Name]
-- Create date: @[Create Date,,]
-- Description:	@[Description,,]
-- =============================================
CREATE PROCEDURE [dbo].[updateГУ] 
          @N nvarchar(50) = null
,@Дата_монтажа_указанная_Исполнителем datetime = null
,@Статус_работ nvarchar(50) = null
,@Ответственный_сотрудник  nvarchar(50)= null
,@Дата_осмотра  datetime= null
,@Факт_установки_ГУ nvarchar(50)= null
,@Уникальный_номер_информационного_указателя nvarchar(50)= null
,@Тип_городского_указателя nvarchar(50)= null
,@Округ nvarchar(50)= null
,@Населённый_пункт nvarchar(150)= null
,@Район nvarchar(50)= null
,@Улица_просп_пер_и_проч nvarchar(50)= null
,@Дом_корп_стр_и_проч nvarchar(50)= null
,@Улица_с_односторонним_движением nvarchar(50)= null
,@В_случае_установки_на_тротуаре_его_измеренная_ширина_м nvarchar(50)= null
,@Оценочная_ширина_тротуара nvarchar(50)= null
,@Расстояние_от_опоры_либо_от_центра_бетонного_основания_до_края nvarchar(50)= null
,@Тип_поверхности_установки nvarchar(50)= null
,@Проходимость nvarchar(50)= null
,@Реконструкция nvarchar(50)= null
,@Просматриваемость nvarchar(50)= null
,@Состояние_ГУ nvarchar(50)= null
,@Ориентация_ГУ nvarchar(50)= null
,@Соответствие_факт_места_установки_тех_Паспорту nvarchar(50)= null
,@Расстояние_до_места_установки_по_отметке_тех_паспорта_м nvarchar(50)= null
,@По_просматриваемости nvarchar(50)= null
,@По_отсутствию_нависания_над_проезжей_частью nvarchar(50)= null
,@По_ширине_тротуара_в_месте_установки nvarchar(50)= null
,@По_расположению_относительно_зеленых_насаждений nvarchar(50)= null
,@По_расстоянию_от_входа_в_транспортные_узлы_и_дома nvarchar(50)= null
,@По_расстоянию_до_края_велосипедной_дорожки nvarchar(50)= null
,@По_содержанию nvarchar(50)= null
,@По_количеству_и_правильному_расположению nvarchar(50)= null
,@Количество_информационных_полей nvarchar(50)= null
,@Текущее_количество_плашек float = null
,@Наличие_модуля_с_картой_местности nvarchar(50)= null
,@Оформление_основания nvarchar(50)= null
,@Территория nvarchar(50)= null
,@Размер_бетонного_блока_длина nvarchar(50)= null
,@Размер_бетонного_блока_ширина nvarchar(50)= null
,@Площадь_бетонного_блока_квм nvarchar(50)= null
,@Площадь_восстановительных_работ_после_заглубления nvarchar(50)= null
,@Вывоз_техники_инвентаря_оборудования nvarchar(50)= null
,@Иные_нарушения_требований_технических_правил_к_городским_указате nvarchar(50)= null
,@Заключение nvarchar(4000)= null
,@Тип_нарушения_внешнего_вида_и_технического_состояния nvarchar(4000)= null
,@Дата_направления_замечания_в_ИЛИОН datetime = null
,@Замечания_камеральной_проверки nvarchar(4000)= null
,@Дата_направления_замечания_камеральной_проверки_в_ИЛИОН datetime = null
,@Устранение_замечаний_камеральной_проверки nvarchar(50)= null
,@Примечание nvarchar(4000)= null
,@Программа nvarchar(500)= null
,@Координата_X_ЕГКО nvarchar(50)= null
,@Координата_Y_ЕГКО nvarchar(50)= null
,@Адрес_установки_ГУсуществует_в_Москве nvarchar(50)= null
,@Наименования_и_нарпавления_указанные_на_инф_полях_верны nvarchar(50)= null
,@Место_фактической_установки_соответствует_отметке_на_карте_в_нов nvarchar(50)= null
,@ФИО_сотрудника_присвоевшего_координаты nvarchar(50)= null
,@ФИО_сотрудника_проверившего_информационные_поля nvarchar(50)= null
/*,@Отметка_о_занесении_в_АСУ_Инвентарный_номер nvarchar(50)= null
,@Дата_занесения_информации_в_АСУ datetime= null
,@Сотрудник_занесший_данные_в_АСУ nvarchar(50)= null
,@Дата_установки_ДУ_по_графику_ДЖКХиБ datetime= null*/
,@Год_реализации_по_госконтрату float= null
,@Этап_работ nvarchar(50)= null
,@Мероприятие_в_рамках_которого_установлен_ДУ nvarchar(50)= null
,@Планируемая_Исполнителем_дата_монтажа nvarchar(50)= null
,@Дата_поступления_информация_в_отдел_мониторинга datetime= null

/*,@Должность_сотрудника_обследовавшего_ДУ nvarchar(50)= null
,@Должность_сотрудника_занесшего_нформацию_в_АСУ nvarchar(50)= null
,@Счетчик_дополнительного_номера nvarchar(50)= null
,@Формирование_первой_части_УН nvarchar(50)= null
,@Вычисление_количества_знаков_во_второй_части_УН nvarchar(50)= null
,@Количество_нулей_подстановки_во_второй_части_УН nvarchar(50)= null
,@Формирование_необходимого_количества_нулей_для_сцепки nvarchar(50)= null
,@Сцепка_готовая_вторая_часть_УН nvarchar(50)= null
,@Сцепка_полный_УН nvarchar(50)= null*/
,@Дата_отправки_информации_Исполнителю datetime= null
,@Содержание_информационных_полей_Блок_1_сторона_А nvarchar(4000)= null
,@Содержание_информационных_полей_Блок_1_сторона_Б nvarchar(4000)= null
,@Содержание_информационных_полей_Блок_2_сторона_А nvarchar(4000)= null
,@Содержание_информационных_полей_Блок_2_сторона_Б nvarchar(4000)= null
,@Содержание_информационных_полей_Блок_3_сторона_А nvarchar(4000)= null
,@Содержание_информационных_полей_Блок_3_сторона_Б nvarchar(4000)= null
,@Содержание_информационных_полей_Блок_4_сторона_А nvarchar(4000)= null
,@Содержание_информационных_полей_Блок_4_сторона_Б nvarchar(4000)= null
,@Фото_стороны_А nvarchar(50)= null
,@Фото_стороны_Б nvarchar(50)= null
,@Фото_текста_1 nvarchar(50)= null
,@Фото_текста_2 nvarchar(50)= null
,@Фото_текста_3 nvarchar(50)= null
,@Фото_текста_4 nvarchar(50)= null
,@Фото_замечания nvarchar(50)= null
,@Карта nvarchar(50)= null
,@Принято datetime= null
,@Оплачено datetime= null,
@паспорт_первый [float]= NULL,
@паспорт float= NULL,
@паспорт_согл float= NULL,
@макет float= NULL,
@макет_согл float= NULL,
@Инвентарный_номер  [nvarchar](50)= NULL,
@ОКОФ  [nvarchar](50)= NULL,
@Амортизационная_группа  [nvarchar](50) = NULL,
@Способ_начисления_амортизации  [nvarchar](50)= NULL,
@Дата_принятия_к_учету date = null,
@Состояние  [nvarchar](50)= NULL,
@Мес_норма float= null,
@Срок_полезного_использования  float= NULL,
@Процент_износа  float= null,
@Балансовая_стоимость float= null,
@Количество float= NULL,
@Сумма_амортизации float= null,
@Остаточная_стоимость float= null
AS
BEGIN
SET NOCOUNT ON;
IF (
		(NOT EXISTS 
				(select [Уникальный номер информационного указателя] 
				from [GBUMATC].[dbo].[ГУ] 
				WHERE dbo.eq([Уникальный номер информационного указателя],@Уникальный_номер_информационного_указателя)=1
				)
		and dbo.lrtrim_isnull(@Уникальный_номер_информационного_указателя)<>''
	))
INSERT INTO [GBUMATC].[dbo].[ГУ]
           ([№ п/п]
           ,[Дата монтажа указанная Исполнителем]
           ,[Статус работ]
           ,[Ответственный сотрудник]
           ,[Дата осмотра]
           ,[Факт установки ГУ]
           ,[Уникальный номер информационного указателя]
           ,[Тип городского указателя]
           ,[Округ]
			,[Населённый пункт]
           ,[Район]
           ,[Улица, просп, пер и проч]
           ,[Дом, корп, стр и проч]
           ,[Улица с односторонним движением]
           ,[В случае установки на тротуаре, его измеренная ширина (м)]
           ,[Оценочная ширина тротуара]
           ,[Расстояние от опоры (либо от центра бетонного основания) до края]
           ,[Тип поверхности установки]
           ,[Проходимость]
           ,[Реконструкция]
           ,[Просматриваемость]
           ,[Состояние ГУ]
           ,[Ориентация ГУ]
           ,[Соответствие факт. места установки тех. Паспорту]
           ,[Расстояние до места установки по отметке тех паспорта (м.)]
           ,[По просматриваемости]
           ,[По отсутствию нависания над проезжей частью]
           ,[По ширине тротуара в месте установки]
           ,[По расположению относительно зеленых насаждений]
           ,[По расстоянию от входа в транспортные узлы и дома]
           ,[По расстоянию до края велосипедной дорожки]
           ,[По содержанию]
           ,[По количеству и правильному расположению]
           ,[Количество информационных полей]
		   ,[Текущее количество плашек]
           ,[Наличие модуля с картой местности]
           ,[Оформление основания]
           ,[Территория]
           ,[Размер бетонного блока длина]
           ,[Размер бетонного блока ширина]
           ,[Площадь восстановительных работ после заглубления]
           ,[Вывоз техники, инвентаря, оборудования]
           ,[Иные нарушения требований технических правил к городским указате]
           ,[Заключение]
           ,[Тип нарушения внешнего вида и технического состояния]
           ,[Дата направления замечания в ИЛИОН]
           ,[Замечания камеральной проверки]
           ,[Дата направления замечания камеральной проверки в ИЛИОН]
           ,[Устранение замечаний камеральной проверки]
           ,[Примечание]
		   ,Программа
           ,[Координата X (ЕГКО)]
           ,[Координата Y (ЕГКО)]
           ,[Адрес установки ГУсуществует в Москве]
           ,[Наименования и нарпавления указанные на инф. полях верны]
           ,[Место фактической установки соответствует отметке на карте в нов]
           ,[ФИО сотрудника, присвоевшего координаты]
           ,[ФИО сотрудника проверившего информационные поля]
           /*,[Отметка о занесении в АСУ (Инвентарный номер)]
           ,[Дата занесения информации в АСУ]
           ,[Сотрудник занесший данные в АСУ]
           ,[Дата установки ДУ по графику ДЖКХиБ]*/
           ,[Год реализации по госконтрату]
           ,[Этап работ]
           ,[Мероприятие в рамках которого установлен ДУ]
           ,[Планируемая Исполнителем дата монтажа]
           ,[Дата поступления информация в отдел мониторинга]
           ,[Площадь бетонного блока (кв.м)]
           /*,[Должность сотрудника обследовавшего ДУ]
           ,[Должность сотрудника занесшего нформацию в АСУ]
           ,[Счетчик дополнительного номера]
           ,[Формирование первой части УН]
           ,[Вычисление количества знаков во второй части УН]
           ,[Количество нулей подстановки во второй части УН]
           ,[Формирование необходимого количества нулей для сцепки]
           ,[Сцепка (готовая вторая часть УН)]
           ,[Сцепка (полный УН)]*/
           ,[Дата отправки информации Исполнителю]
           ,[Содержание информационных полей. Блок 1, сторона А]
           ,[Содержание информационных полей. Блок 1, сторона Б]
           ,[Содержание информационных полей. Блок 2, сторона А]
           ,[Содержание информационных полей. Блок 2, сторона Б]
           ,[Содержание информационных полей. Блок 3, сторона А]
           ,[Содержание информационных полей. Блок 3, сторона Б]
           ,[Содержание информационных полей. Блок 4, сторона А]
           ,[Содержание информационных полей. Блок 4, сторона Б]
           ,[Фото стороны А]
           ,[Фото стороны Б]
           ,[Фото текста 1]
           ,[Фото текста 2]
           ,[Фото текста 3]
           ,[Фото текста 4]
           ,[Фото замечания]
           ,[Карта]
			,Принято
			,Оплачено
			,паспорт_первый,
			паспорт,
			паспорт_согл,
			макет,
			макет_согл,
			[Инвентарный номер],
			ОКОФ,
			[Амортизационная группа],
			[Способ начисления амортизации],
			[Дата принятия к учету],
			Состояние,
			[Мес. норма %],
			[Срок полезного использо вания (мес.)],
			[Процент износа],
			[Балансовая стоимость],
			[Кол-во],
			[Сумма амортизации],
			[Остаточная стоимость])
     VALUES
           (@N
,@Дата_монтажа_указанная_Исполнителем
,ltrim(rtrim(@Статус_работ))
,ltrim(rtrim(@Ответственный_сотрудник))
,@Дата_осмотра
,ltrim(rtrim(@Факт_установки_ГУ))
,ltrim(rtrim(@Уникальный_номер_информационного_указателя))
,ltrim(rtrim(@Тип_городского_указателя))
,ltrim(rtrim(@Округ))
,ltrim(rtrim(@Населённый_пункт))
,ltrim(rtrim(@Район))
,ltrim(rtrim(@Улица_просп_пер_и_проч))
,ltrim(rtrim(@Дом_корп_стр_и_проч))
,ltrim(rtrim(@Улица_с_односторонним_движением))
,ltrim(rtrim(@В_случае_установки_на_тротуаре_его_измеренная_ширина_м))
,ltrim(rtrim(@Оценочная_ширина_тротуара))
,ltrim(rtrim(@Расстояние_от_опоры_либо_от_центра_бетонного_основания_до_края))
,ltrim(rtrim(@Тип_поверхности_установки))
,ltrim(rtrim(@Проходимость))
,ltrim(rtrim(@Реконструкция))
,ltrim(rtrim(@Просматриваемость))
,ltrim(rtrim(@Состояние_ГУ))
,ltrim(rtrim(@Ориентация_ГУ))
,ltrim(rtrim(@Соответствие_факт_места_установки_тех_Паспорту))
,ltrim(rtrim(@Расстояние_до_места_установки_по_отметке_тех_паспорта_м))
,ltrim(rtrim(@По_просматриваемости))
,ltrim(rtrim(@По_отсутствию_нависания_над_проезжей_частью))
,ltrim(rtrim(@По_ширине_тротуара_в_месте_установки))
,ltrim(rtrim(@По_расположению_относительно_зеленых_насаждений))
,ltrim(rtrim(@По_расстоянию_от_входа_в_транспортные_узлы_и_дома))
,ltrim(rtrim(@По_расстоянию_до_края_велосипедной_дорожки))
,ltrim(rtrim(@По_содержанию))
,ltrim(rtrim(@По_количеству_и_правильному_расположению))
,ltrim(rtrim(@Количество_информационных_полей))
,ltrim(rtrim(@Текущее_количество_плашек))
,ltrim(rtrim(@Наличие_модуля_с_картой_местности))
,ltrim(rtrim(@Оформление_основания))
,ltrim(rtrim(@Территория))
,ltrim(rtrim(@Размер_бетонного_блока_длина))
,ltrim(rtrim(@Размер_бетонного_блока_ширина))
,ltrim(rtrim(@Площадь_восстановительных_работ_после_заглубления))
,ltrim(rtrim(@Вывоз_техники_инвентаря_оборудования))
,ltrim(rtrim(@Иные_нарушения_требований_технических_правил_к_городским_указате))
,ltrim(rtrim(@Заключение))
,ltrim(rtrim(@Тип_нарушения_внешнего_вида_и_технического_состояния))
,@Дата_направления_замечания_в_ИЛИОН
,ltrim(rtrim(@Замечания_камеральной_проверки))
,@Дата_направления_замечания_камеральной_проверки_в_ИЛИОН
,ltrim(rtrim(@Устранение_замечаний_камеральной_проверки))
,ltrim(rtrim(@Примечание))
,ltrim(rtrim(@Программа))
,ltrim(rtrim(@Координата_X_ЕГКО))
,ltrim(rtrim(@Координата_Y_ЕГКО))
,ltrim(rtrim(@Адрес_установки_ГУсуществует_в_Москве))
,ltrim(rtrim(@Наименования_и_нарпавления_указанные_на_инф_полях_верны))
,ltrim(rtrim(@Место_фактической_установки_соответствует_отметке_на_карте_в_нов))
,ltrim(rtrim(@ФИО_сотрудника_присвоевшего_координаты))
,ltrim(rtrim(@ФИО_сотрудника_проверившего_информационные_поля))
/*,@Отметка_о_занесении_в_АСУ_Инвентарный_номер
,@Дата_занесения_информации_в_АСУ
,@Сотрудник_занесший_данные_в_АСУ
,@Дата_установки_ДУ_по_графику_ДЖКХиБ*/
,ltrim(rtrim(@Год_реализации_по_госконтрату))
,ltrim(rtrim(@Этап_работ))
,ltrim(rtrim(@Мероприятие_в_рамках_которого_установлен_ДУ))
,@Планируемая_Исполнителем_дата_монтажа
,@Дата_поступления_информация_в_отдел_мониторинга
,ltrim(rtrim(@Площадь_бетонного_блока_квм))
/*,@Должность_сотрудника_обследовавшего_ДУ
,@Должность_сотрудника_занесшего_нформацию_в_АСУ
,@Счетчик_дополнительного_номера
,@Формирование_первой_части_УН
,@Вычисление_количества_знаков_во_второй_части_УН
,@Количество_нулей_подстановки_во_второй_части_УН
,@Формирование_необходимого_количества_нулей_для_сцепки
,@Сцепка_готовая_вторая_часть_УН
,@Сцепка_полный_УН*/
,@Дата_отправки_информации_Исполнителю
,ltrim(rtrim(@Содержание_информационных_полей_Блок_1_сторона_А))
,ltrim(rtrim(@Содержание_информационных_полей_Блок_1_сторона_Б))
,ltrim(rtrim(@Содержание_информационных_полей_Блок_2_сторона_А))
,ltrim(rtrim(@Содержание_информационных_полей_Блок_2_сторона_Б))
,ltrim(rtrim(@Содержание_информационных_полей_Блок_3_сторона_А))
,ltrim(rtrim(@Содержание_информационных_полей_Блок_3_сторона_Б))
,ltrim(rtrim(@Содержание_информационных_полей_Блок_4_сторона_А))
,ltrim(rtrim(@Содержание_информационных_полей_Блок_4_сторона_Б))
,ltrim(rtrim(@Фото_стороны_А))
,ltrim(rtrim(@Фото_стороны_Б))
,ltrim(rtrim(@Фото_текста_1))
,ltrim(rtrim(@Фото_текста_2))
,ltrim(rtrim(@Фото_текста_3))
,ltrim(rtrim(@Фото_текста_4))
,ltrim(rtrim(@Фото_замечания))
,ltrim(rtrim(@Карта))
,@Принято
,@Оплачено
,@паспорт_первый
,@паспорт
,@паспорт_согл
,@макет
,@макет_согл
,ltrim(rtrim(@Инвентарный_номер ))
,ltrim(rtrim(@ОКОФ))
,ltrim(rtrim(@Амортизационная_группа ))
,ltrim(rtrim(@Способ_начисления_амортизации ))
,@Дата_принятия_к_учету
,ltrim(rtrim(@Состояние))
,@Мес_норма
,@Срок_полезного_использования
,@Процент_износа
,@Балансовая_стоимость
,@Количество
,@Сумма_амортизации
,@Остаточная_стоимость)
ELSE 
	
UPDATE [GBUMATC].[dbo].[ГУ]
   SET [№ п/п] = @N
      ,[Дата монтажа указанная Исполнителем] = @Дата_монтажа_указанная_Исполнителем
      ,[Статус работ] = @Статус_работ
      ,[Ответственный сотрудник] = @Ответственный_сотрудник
      ,[Дата осмотра] = @Дата_осмотра
      ,[Факт установки ГУ] = @Факт_установки_ГУ
      ,[Уникальный номер информационного указателя] = @Уникальный_номер_информационного_указателя
      ,[Тип городского указателя] = @Тип_городского_указателя
      ,[Округ] = @Округ
	  ,[Населённый пункт] = @Населённый_пункт
      ,[Район] = @Район
      ,[Улица, просп, пер и проч] = @Улица_просп_пер_и_проч
      ,[Дом, корп, стр и проч] = @Дом_корп_стр_и_проч
      ,[Улица с односторонним движением] = @Улица_с_односторонним_движением
      ,[В случае установки на тротуаре, его измеренная ширина (м)] = @В_случае_установки_на_тротуаре_его_измеренная_ширина_м
      ,[Оценочная ширина тротуара] = @Оценочная_ширина_тротуара
      ,[Расстояние от опоры (либо от центра бетонного основания) до края] = @Расстояние_от_опоры_либо_от_центра_бетонного_основания_до_края
      ,[Тип поверхности установки] = @Тип_поверхности_установки
      ,[Проходимость] = @Проходимость
      ,[Реконструкция] = @Реконструкция
      ,[Просматриваемость] = @Просматриваемость
      ,[Состояние ГУ] = @Состояние_ГУ
      ,[Ориентация ГУ] = @Ориентация_ГУ
      ,[Соответствие факт. места установки тех. Паспорту] = @Соответствие_факт_места_установки_тех_Паспорту
      ,[Расстояние до места установки по отметке тех паспорта (м.)] = @Расстояние_до_места_установки_по_отметке_тех_паспорта_м
      ,[По просматриваемости] = @По_просматриваемости
      ,[По отсутствию нависания над проезжей частью] = @По_отсутствию_нависания_над_проезжей_частью
      ,[По ширине тротуара в месте установки] = @По_ширине_тротуара_в_месте_установки
      ,[По расположению относительно зеленых насаждений] = @По_расположению_относительно_зеленых_насаждений
      ,[По расстоянию от входа в транспортные узлы и дома] = @По_расстоянию_от_входа_в_транспортные_узлы_и_дома
      ,[По расстоянию до края велосипедной дорожки] = @По_расстоянию_до_края_велосипедной_дорожки
      ,[По содержанию] = @По_содержанию
      ,[По количеству и правильному расположению] = @По_количеству_и_правильному_расположению
      ,[Количество информационных полей] = @Количество_информационных_полей
		,[Текущее количество плашек] =@Текущее_количество_плашек
      ,[Наличие модуля с картой местности] = @Наличие_модуля_с_картой_местности
      ,[Оформление основания] = @Оформление_основания
      ,[Территория] = @Территория
      ,[Размер бетонного блока длина] = @Размер_бетонного_блока_длина
      ,[Размер бетонного блока ширина] = @Размер_бетонного_блока_ширина
      ,[Площадь восстановительных работ после заглубления] = @Площадь_восстановительных_работ_после_заглубления
      ,[Вывоз техники, инвентаря, оборудования] = @Вывоз_техники_инвентаря_оборудования
      ,[Иные нарушения требований технических правил к городским указате] = @Иные_нарушения_требований_технических_правил_к_городским_указате
      ,[Заключение] = @Заключение
      ,[Тип нарушения внешнего вида и технического состояния] = @Тип_нарушения_внешнего_вида_и_технического_состояния
		,[Дата направления замечания в ИЛИОН] =	@Дата_направления_замечания_в_ИЛИОН
		,[Замечания камеральной проверки] =@Замечания_камеральной_проверки
		,[Дата направления замечания камеральной проверки в ИЛИОН] =	@Дата_направления_замечания_камеральной_проверки_в_ИЛИОН
		,[Устранение замечаний камеральной проверки] =	@Устранение_замечаний_камеральной_проверки
      ,[Примечание] = @Примечание
	  ,[Программа] = @Программа
      ,[Координата X (ЕГКО)] = @Координата_X_ЕГКО
      ,[Координата Y (ЕГКО)] = @Координата_Y_ЕГКО
      ,[Адрес установки ГУсуществует в Москве] = @Адрес_установки_ГУсуществует_в_Москве
      ,[Наименования и нарпавления указанные на инф. полях верны] = @Наименования_и_нарпавления_указанные_на_инф_полях_верны
      ,[Место фактической установки соответствует отметке на карте в нов] = @Место_фактической_установки_соответствует_отметке_на_карте_в_нов
      ,[ФИО сотрудника, присвоевшего координаты] = @ФИО_сотрудника_присвоевшего_координаты
      ,[ФИО сотрудника проверившего информационные поля] = @ФИО_сотрудника_проверившего_информационные_поля
      /*,[Отметка о занесении в АСУ (Инвентарный номер)] = @Отметка_о_занесении_в_АСУ_Инвентарный_номер
      ,[Дата занесения информации в АСУ] = @Дата_занесения_информации_в_АСУ
      ,[Сотрудник занесший данные в АСУ] = @Сотрудник_занесший_данные_в_АСУ
      ,[Дата установки ДУ по графику ДЖКХиБ] = @Дата_установки_ДУ_по_графику_ДЖКХиБ*/
      ,[Год реализации по госконтрату] = @Год_реализации_по_госконтрату
      ,[Этап работ] = @Этап_работ
      ,[Мероприятие в рамках которого установлен ДУ] = @Мероприятие_в_рамках_которого_установлен_ДУ
      ,[Планируемая Исполнителем дата монтажа] = @Планируемая_Исполнителем_дата_монтажа
      ,[Дата поступления информация в отдел мониторинга] = @Дата_поступления_информация_в_отдел_мониторинга
      ,[Площадь бетонного блока (кв.м)] = @Площадь_бетонного_блока_квм
      /*,[Должность сотрудника обследовавшего ДУ] = @Должность_сотрудника_обследовавшего_ДУ
      ,[Должность сотрудника занесшего нформацию в АСУ] = @Должность_сотрудника_занесшего_нформацию_в_АСУ
      ,[Счетчик дополнительного номера] = @Счетчик_дополнительного_номера
      ,[Формирование первой части УН] = @Формирование_первой_части_УН
      ,[Вычисление количества знаков во второй части УН] = @Вычисление_количества_знаков_во_второй_части_УН
      ,[Количество нулей подстановки во второй части УН] = @Количество_нулей_подстановки_во_второй_части_УН
      ,[Формирование необходимого количества нулей для сцепки] = @Формирование_необходимого_количества_нулей_для_сцепки
      ,[Сцепка (готовая вторая часть УН)] = @Сцепка_готовая_вторая_часть_УН
      ,[Сцепка (полный УН)] = @Сцепка_полный_УН*/
      ,[Дата отправки информации Исполнителю] = @Дата_отправки_информации_Исполнителю
      ,[Содержание информационных полей. Блок 1, сторона А] = @Содержание_информационных_полей_Блок_1_сторона_А
      ,[Содержание информационных полей. Блок 1, сторона Б] = @Содержание_информационных_полей_Блок_1_сторона_Б
      ,[Содержание информационных полей. Блок 2, сторона А] = @Содержание_информационных_полей_Блок_2_сторона_А
      ,[Содержание информационных полей. Блок 2, сторона Б] = @Содержание_информационных_полей_Блок_2_сторона_Б
      ,[Содержание информационных полей. Блок 3, сторона А] = @Содержание_информационных_полей_Блок_3_сторона_А
      ,[Содержание информационных полей. Блок 3, сторона Б] = @Содержание_информационных_полей_Блок_3_сторона_Б
      ,[Содержание информационных полей. Блок 4, сторона А] = @Содержание_информационных_полей_Блок_4_сторона_А
      ,[Содержание информационных полей. Блок 4, сторона Б] = @Содержание_информационных_полей_Блок_4_сторона_Б
      ,[Фото стороны А] = @Фото_стороны_А
      ,[Фото стороны Б] = @Фото_стороны_Б
      ,[Фото текста 1] = @Фото_текста_1
      ,[Фото текста 2] = @Фото_текста_2
      ,[Фото текста 3] = @Фото_текста_3
      ,[Фото текста 4] = @Фото_текста_4
      ,[Фото замечания] = @Фото_замечания
      ,[Карта] = @Карта
	,Принято = @Принято
	,Оплачено = @Оплачено
	,паспорт_первый =@паспорт_первый
	,паспорт = @паспорт
	,паспорт_согл = @паспорт_согл
	,макет = @макет
	,макет_согл = @макет_согл
	,[Инвентарный номер] = (@Инвентарный_номер )
	,ОКОФ = (@ОКОФ)
	,[Амортизационная группа] = @Амортизационная_группа 
	,[Способ начисления амортизации] = @Способ_начисления_амортизации
	,[Дата принятия к учету] = @Дата_принятия_к_учету
	,Состояние = @Состояние
	,[Мес. норма %] = @Мес_норма
	,[Срок полезного использо вания (мес.)] = @Срок_полезного_использования
	,[Процент износа] = @Процент_износа
	,[Балансовая стоимость] = @Балансовая_стоимость
	,[Кол-во] = @Количество
	,[Сумма амортизации] = @Сумма_амортизации
	,[Остаточная стоимость] = @Остаточная_стоимость


 WHERE dbo.eq([Уникальный номер информационного указателя], @Уникальный_номер_информационного_указателя)=1
		and
	 (
		dbo.eq([№ п/п], @N)=0
		or dbo.eq([Дата монтажа указанная Исполнителем],@Дата_монтажа_указанная_Исполнителем)=0
		or dbo.eq([Статус работ],@Статус_работ)=0
		or dbo.eq([Ответственный сотрудник],@Ответственный_сотрудник)=0
		or dbo.eq([Дата осмотра],@Дата_осмотра)=0
		or dbo.eq([Факт установки ГУ],@Факт_установки_ГУ)=0 
		or dbo.eq([Тип городского указателя],@Тип_городского_указателя)=0
		or dbo.eq([Округ],@Округ)=0
		or dbo.eq([Населённый пункт],@Населённый_пункт)=0
		or dbo.eq([Район],@Район)=0
		or dbo.eq([Улица, просп, пер и проч],@Улица_просп_пер_и_проч)=0
		or dbo.eq([Дом, корп, стр и проч],@Дом_корп_стр_и_проч)=0
		or dbo.eq([Улица с односторонним движением],@Улица_с_односторонним_движением)=0
		or dbo.eq([В случае установки на тротуаре, его измеренная ширина (м)],@В_случае_установки_на_тротуаре_его_измеренная_ширина_м)=0
		or dbo.eq([Оценочная ширина тротуара],@Оценочная_ширина_тротуара)=0
		or dbo.eq([Расстояние от опоры (либо от центра бетонного основания) до края],@Расстояние_от_опоры_либо_от_центра_бетонного_основания_до_края)=0
		or dbo.eq([Тип поверхности установки],@Тип_поверхности_установки)=0
		or dbo.eq([Проходимость],@Проходимость)=0
		or dbo.eq([Реконструкция],@Реконструкция)=0
 		or dbo.eq([Просматриваемость],@Просматриваемость)=0
		or dbo.eq([Состояние ГУ],@Состояние_ГУ)=0
		or dbo.eq([Ориентация ГУ],@Ориентация_ГУ)=0
		or dbo.eq([Соответствие факт. места установки тех. Паспорту],@Соответствие_факт_места_установки_тех_Паспорту)=0
		or dbo.eq([Расстояние до места установки по отметке тех паспорта (м.)],@Расстояние_до_места_установки_по_отметке_тех_паспорта_м)=0
		or dbo.eq([По просматриваемости],@По_просматриваемости)=0
		or dbo.eq([По отсутствию нависания над проезжей частью],@По_отсутствию_нависания_над_проезжей_частью)=0
		or dbo.eq([По ширине тротуара в месте установки],@По_ширине_тротуара_в_месте_установки)=0
		or dbo.eq([По расположению относительно зеленых насаждений],@По_расположению_относительно_зеленых_насаждений)=0
 		or dbo.eq([По расстоянию от входа в транспортные узлы и дома],@По_расстоянию_от_входа_в_транспортные_узлы_и_дома)=0
		or dbo.eq([По расстоянию до края велосипедной дорожки],@По_расстоянию_до_края_велосипедной_дорожки)=0
		or dbo.eq([По содержанию],@По_содержанию)=0
 		or dbo.eq([По количеству и правильному расположению],@По_количеству_и_правильному_расположению)=0
		or dbo.eq([Количество информационных полей],@Количество_информационных_полей)=0
		or dbo.eq([Текущее количество плашек],@Текущее_количество_плашек)=0
		or dbo.eq([Наличие модуля с картой местности],@Наличие_модуля_с_картой_местности)=0
 		or dbo.eq([Оформление основания],@Оформление_основания)=0
		or dbo.eq([Территория],@Территория)=0
		or dbo.eq([Размер бетонного блока длина],@Размер_бетонного_блока_длина)=0
		or dbo.eq([Размер бетонного блока ширина],@Размер_бетонного_блока_ширина)=0
		or dbo.eq([Площадь восстановительных работ после заглубления],@Площадь_восстановительных_работ_после_заглубления)=0
		or dbo.eq([Вывоз техники, инвентаря, оборудования],@Вывоз_техники_инвентаря_оборудования)=0
		or dbo.eq([Иные нарушения требований технических правил к городским указате],@Иные_нарушения_требований_технических_правил_к_городским_указате)=0
		or dbo.eq([Заключение],@Заключение)=0
		or dbo.eq([Тип нарушения внешнего вида и технического состояния],@Тип_нарушения_внешнего_вида_и_технического_состояния)=0
		or dbo.eq([Дата направления замечания в ИЛИОН],@Дата_направления_замечания_в_ИЛИОН)=0
 		or dbo.eq([Замечания камеральной проверки],@Замечания_камеральной_проверки)=0
		or dbo.eq([Дата направления замечания камеральной проверки в ИЛИОН],@Дата_направления_замечания_камеральной_проверки_в_ИЛИОН)=0
		or dbo.eq([Устранение замечаний камеральной проверки],@Устранение_замечаний_камеральной_проверки)=0
		or dbo.eq([Примечание],@Примечание)=0
		or dbo.eq([Программа],@Программа)=0
		or dbo.eq([Координата X (ЕГКО)],@Координата_X_ЕГКО)=0
		or dbo.eq([Координата Y (ЕГКО)],@Координата_Y_ЕГКО)=0
		or dbo.eq([Адрес установки ГУсуществует в Москве],@Адрес_установки_ГУсуществует_в_Москве)=0
 		or dbo.eq([Наименования и нарпавления указанные на инф. полях верны],@Наименования_и_нарпавления_указанные_на_инф_полях_верны)=0
		or dbo.eq([Место фактической установки соответствует отметке на карте в нов],@Место_фактической_установки_соответствует_отметке_на_карте_в_нов)=0
		or dbo.eq([ФИО сотрудника, присвоевшего координаты],@ФИО_сотрудника_присвоевшего_координаты)=0
		or dbo.eq([ФИО сотрудника проверившего информационные поля],@ФИО_сотрудника_проверившего_информационные_поля)=0
 		/*or dbo.eq([Отметка о занесении в АСУ (Инвентарный номер)=0],@Отметка_о_занесении_в_АСУ_Инвентарный_номер)=0
		or dbo.eq([Дата занесения информации в АСУ],@Дата_занесения_информации_в_АСУ)=0
		or dbo.eq([Сотрудник занесший данные в АСУ],@Сотрудник_занесший_данные_в_АСУ)=0
 		or dbo.eq([Дата установки ДУ по графику ДЖКХиБ],@Дата_установки_ДУ_по_графику_ДЖКХиБ)=0*/
		or dbo.eq([Год реализации по госконтрату],@Год_реализации_по_госконтрату)=0
		or dbo.eq([Этап работ],@Этап_работ)=0
		or dbo.eq([Мероприятие в рамках которого установлен ДУ],@Мероприятие_в_рамках_которого_установлен_ДУ)=0
		or dbo.eq([Планируемая Исполнителем дата монтажа],@Планируемая_Исполнителем_дата_монтажа)=0
		or dbo.eq([Дата поступления информация в отдел мониторинга],@Дата_поступления_информация_в_отдел_мониторинга)=0
		or dbo.eq([Площадь бетонного блока (кв.м)],@Площадь_бетонного_блока_квм)=0
		/*or dbo.eq([Должность сотрудника обследовавшего ДУ],@Должность_сотрудника_обследовавшего_ДУ)=0
 		or dbo.eq([Должность сотрудника занесшего нформацию в АСУ],@Должность_сотрудника_занесшего_нформацию_в_АСУ)=0
		or dbo.eq([Счетчик дополнительного номера],@Счетчик_дополнительного_номера)=0
		or dbo.eq([Формирование первой части УН],@Формирование_первой_части_УН)=0
		or dbo.eq([Вычисление количества знаков во второй части УН],@Вычисление_количества_знаков_во_второй_части_УН)=0
		or dbo.eq([Количество нулей подстановки во второй части УН],@Количество_нулей_подстановки_во_второй_части_УН)=0
		or dbo.eq([Формирование необходимого количества нулей для сцепки],@Формирование_необходимого_количества_нулей_для_сцепки)=0
		or dbo.eq([Сцепка (готовая вторая часть УН)=0],@Сцепка_готовая_вторая_часть_УН)=0
		or dbo.eq([Сцепка (полный УН)=0],@Сцепка_полный_УН)=0*/
		or dbo.eq([Дата отправки информации Исполнителю],@Дата_отправки_информации_Исполнителю)=0
		or dbo.eq([Содержание информационных полей. Блок 1, сторона А],@Содержание_информационных_полей_Блок_1_сторона_А)=0
		or dbo.eq([Содержание информационных полей. Блок 1, сторона Б],@Содержание_информационных_полей_Блок_1_сторона_Б)=0
		or dbo.eq([Содержание информационных полей. Блок 2, сторона А],@Содержание_информационных_полей_Блок_2_сторона_А)=0
		or dbo.eq([Содержание информационных полей. Блок 2, сторона Б],@Содержание_информационных_полей_Блок_2_сторона_Б)=0
		or dbo.eq([Содержание информационных полей. Блок 3, сторона А],@Содержание_информационных_полей_Блок_3_сторона_А)=0
		or dbo.eq([Содержание информационных полей. Блок 3, сторона Б],@Содержание_информационных_полей_Блок_3_сторона_Б)=0
		or dbo.eq([Содержание информационных полей. Блок 4, сторона А],@Содержание_информационных_полей_Блок_4_сторона_А)=0
		or dbo.eq([Содержание информационных полей. Блок 4, сторона Б],@Содержание_информационных_полей_Блок_4_сторона_Б)=0
		or dbo.eq([Фото стороны А],@Фото_стороны_А)=0
		or dbo.eq([Фото стороны Б],@Фото_стороны_Б)=0
		or dbo.eq([Фото текста 1],@Фото_текста_1)=0
		or dbo.eq([Фото текста 2],@Фото_текста_2)=0
		or dbo.eq([Фото текста 3],@Фото_текста_3)=0
		or dbo.eq([Фото текста 4],@Фото_текста_4)=0
 		or dbo.eq([Фото замечания],@Фото_замечания)=0
		or dbo.eq([Карта],@Карта)=0
		or dbo.eq(паспорт_первый ,@паспорт_первый)=0
		or dbo.eq(паспорт, @паспорт)=0
		or dbo.eq(паспорт_согл, @паспорт_согл)=0
		or dbo.eq(макет, @макет)=0
		or dbo.eq(макет_согл,@макет_согл)=0
		or dbo.eq([Инвентарный номер] ,@Инвентарный_номер)=0
		or dbo.eq(ОКОФ, @ОКОФ)=0
		or dbo.eq([Амортизационная группа],@Амортизационная_группа)=0
		or dbo.eq([Способ начисления амортизации],@Способ_начисления_амортизации)=0
 		or dbo.eq([Дата принятия к учету], @Дата_принятия_к_учету)=0
		or dbo.eq(Состояние ,@Состояние)=0
		or dbo.eq([Мес. норма %] , @Мес_норма)=0
		or dbo.eq([Срок полезного использо вания (мес.)] , @Срок_полезного_использования)=0
		or dbo.eq([Процент износа] , @Процент_износа)=0
		or dbo.eq([Балансовая стоимость] , @Балансовая_стоимость)=0
		or dbo.eq([Кол-во] , @Количество)=0
		or dbo.eq([Сумма амортизации], @Сумма_амортизации)=0
		or dbo.eq([Остаточная стоимость] ,@Остаточная_стоимость)=0
		or dbo.eq(Принято ,@Принято)=0
 		or dbo.eq(Оплачено , @Оплачено)=0
)
	
END

GO