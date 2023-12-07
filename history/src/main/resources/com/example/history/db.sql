drop  database if exists history; 
create database history DEFAULT CHARACTER SET utf8;

use history;

DROP TABLE if exists users ; 

DROP TABLE if exists themes ; 

DROP TABLE if exists messages ; 

CREATE TABLE history.users (
  u_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NULL COMMENT '',
  password VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (u_id)  COMMENT '');
  
  INSERT INTO history.users (u_id, name, password) VALUES ('1', 'Кирилл', '1234');
INSERT INTO history.users (u_id, name, password) VALUES ('2', 'Александр', '4321');
  
CREATE TABLE history.messages (
  id BIGINT NOT NULL AUTO_INCREMENT,
  texxt VARCHAR(45) NULL COMMENT '',
   u_id INT NULL COMMENT '',
  PRIMARY KEY (id)  COMMENT '',
  CONSTRAINT `sk`
    FOREIGN KEY (u_id)
    REFERENCES history.users (u_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

  
  CREATE TABLE history.themes (
  t_id INT NOT NULL AUTO_INCREMENT,
  content VARCHAR(11000) NULL COMMENT '',
  PRIMARY KEY (t_id)  COMMENT '');
  
  INSERT INTO history.themes (t_id, content) VALUES ('1', 'Научные основы ракетостроения были заложены во время Просвещения сэром Исааком Ньютоном. Его три закона движения. В некоторых системах отсчёта тело продолжает оставаться в состоянии постоянного покоя или равномерного прямолинейного движения, если на тело не действует приложенная сила
            Приложенная сила, действующая на тело, приводит к возникновению ускорения, пропорционального инерции тела (его массе), т.е. F = ma
            Силе, с которой одно тело взаимодействует с другим, сопоставлена равная противодействующая сила от второго тела к первому.
            известны каждому, кто прошел основной курс физики. Скорее всего, первые конструкторы ракет понимали эти три закона интуитивно, но именно сформулированные принципы стали осознанно использовать при проектировании. Первый закон поясняет, почему ракеты вообще приводятся в движение. Без движущей тяги ракета останется на месте. Второй закон определяет количество тяги, производимой ракетой в определенный момент времени, например, для конкретной массы M. (Заметьте, второй закон Ньютона действителен только для систем с постоянной массой и потому не равносилен подходу сохранения импульса, описанному выше. Когда масса изменяется, необходимо использовать уравнение, которое учитывает изменяющуюся массу). Третий закон поясняет, что из-за выбрасываемой массы в качестве реакции на ракету действует сила тяги.
            В 1720-х, примерно когда умер Ньютон, исследователи в Нидерландах, Германии и России стали учитывать его законы при разработке ракет. Датский профессор Вильгельм Гравезанд построил реактивные автомобили, в которых выбрасывался пар. В Германии и России ракетостроители стали экспериментировать с ракетами побольше. Эти ракеты были достаточно мощными, чтобы перед отрывом горячие струи пламени прожигали глубокие ямы в земле. Британские колониальные войны 1792 и 1799 гг. впервые явили использование индийского ракетного обстрела по британской армии. Хайдер Али и его сын Типу Султан, правители княжества Майсур в Индии, в 1792 году разработали первые ракеты в железном корпусе и использовали их против британцев в англо-майсурских войнах
            
            Использование железной оболочки для топлива увеличивало дальность и тягу, и было гораздо более продвинутой технологией по сравнению с тем, что до этого видели британцы. Вдохновлённый этой технологией, британский полковник Уильям Конгрив начал проектировать собственную ракету для британских сил. Конгрив разработал новую смесь топлива и добавил к железной трубе конусообразную носовую часть, чтобы улучшить аэродинамику. Ракеты Конгрива имели дальность полёта до 5 км. Они успешно использовались британцами в наполеоновских войнах и запускались с кораблей при атаке форта МакГенри в войне 1812-го года. Конгрив создал и заполненные дробью ракеты для использования против наземных целей, и зажигательные ракеты для использования против кораблей. Тем не менее, даже ракеты Конгрива не могли побороть главный недостаток ракет: точность.
            Научные основы ракетостроения были заложены во время Просвещения сэром Исааком Ньютоном. Его три закона движения,
            
            В некоторых системах отсчёта тело продолжает оставаться в состоянии постоянного покоя или равномерного прямолинейного движения, если на тело не действует приложенная сила
            Приложенная сила, действующая на тело, приводит к возникновению ускорения, пропорционального инерции тела (его массе), т.е. F = ma.
            Силе, с которой одно тело взаимодействует с другим, сопоставлена равная противодействующая сила от второго тела к первому.
            известны каждому, кто прошел основной курс физики. Скорее всего, первые конструкторы ракет понимали эти три закона интуитивно, но именно сформулированные принципы стали осознанно использовать при проектировании. Первый закон поясняет, почему ракеты вообще приводятся в движение. Без движущей тяги ракета останется на месте. Второй закон определяет количество тяги, производимой ракетой в определенный момент времени, например, для конкретной массы M. (Заметьте, второй закон Ньютона действителен только для систем с постоянной массой и потому не равносилен подходу сохранения импульса, описанному выше. Когда масса изменяется, необходимо использовать уравнение, которое учитывает изменяющуюся массу). Третий закон поясняет, что из-за выбрасываемой массы в качестве реакции на ракету действует сила тяги.
            В 1720-х, примерно когда умер Ньютон, исследователи в Нидерландах, Германии и России стали учитывать его законы при разработке ракет. Датский профессор Вильгельм Гравезанд построил реактивные автомобили, в которых выбрасывался пар. В Германии и России ракетостроители стали экспериментировать с ракетами побольше. Эти ракеты были достаточно мощными, чтобы перед отрывом горячие струи пламени прожигали глубокие ямы в земле. Британские колониальные войны 1792 и 1799 гг. впервые явили использование индийского ракетного обстрела по британской армии. Хайдер Али и его сын Типу Султан, правители княжества Майсур в Индии, в 1792 году разработали первые ракеты в железном корпусе и использовали их против британцев в англо-майсурских войнах.
            Использование железной оболочки для топлива увеличивало дальность и тягу, и было гораздо более продвинутой технологией по сравнению с тем, что до этого видели британцы. Вдохновлённый этой технологией, британский полковник Уильям Конгрив начал проектировать собственную ракету для британских сил. Конгрив разработал новую смесь топлива и добавил к железной трубе конусообразную носовую часть, чтобы улучшить аэродинамику. Ракеты Конгрива имели дальность полёта до 5 км. Они успешно использовались британцами в наполеоновских войнах и запускались с кораблей при атаке форта МакГенри в войне 1812-го года. Конгрив создал и заполненные дробью ракеты для использования против наземных целей, и зажигательные ракеты для использования против кораблей. Тем не менее, даже ракеты Конгрива не могли побороть главный недостаток ракет: точность.');
INSERT INTO history.themes (t_id, content) VALUES ('2', 'В то время эффективность ракет как оружия состояла не в их точности или взрывной силе, а скорее в том, что в противника можно было одновременно запустить большое их количество. Ракеты Конгрива имели некоторое базовое управление высотой благодаря прикрепленной к взрывчатке длинной палке, но у ракет была тенденция сильно отклоняться от курса. В 1844 году британский конструктор Уильям Хейл изобрёл стабилизацию при помощи вращения, сегодня распространённую в оружейных стволах, которая избавила от необходимости использовать направляющие палки. Уильям Хейл заставил выбрасываемые газы обтекать небольшие лопасти (рули), заставляя ракету вращаться и стабилизироваться (точно так же, как гироскоп не падает набок, если его закрутить на ровной поверхности). Вскоре военное применение ракет снова отошло на задний план, когда прусская армия разработала орудия со скользящим затвором, что оказалось гораздо эффективнее лучших ракет.
            Годдард стал экспериментировать с твердотопливными ракетами, пробуя разные соединения и измеряя скорость выбрасываемых газов. По итогам своей работы, Годдард согласился с заключением Циолковского о том, что жидкое топливо подойдёт лучше. Проблема, с которой столкнулся Годдард, состояла в том, что жидкотопливные ракеты были совершенно новой областью исследования. Ни одной такой ракеты еще никто никогда не строил, и конструкция была гораздо сложнее, чем для твердотопливной ракеты. В такой ракете понадобятся отдельные баки и насосы для топлива и окислителя, чтобы их смешать и зажечь – камера сгорания, и турбина для работы насосов (примерно как в двигателе самолёта турбина приводит в движение компрессор). Годдард также добавил сопло Лаваля, которое охлаждало горячие выбрасываемые газы в сверхзвуковую, сильнонаправленную  струю. Это увеличило тягу больше чем в два раза, а эффективность двигателя возросла от 2% до 64%! Несмотря на технические сложности, Годдард разработал первую успешную жидкотопливную ракету, которая использовала бензин в качестве горючего и жидкий кислород в качестве окислителя, и опробовал её 16 марта 1926 года. Ракета горела 2.5 секунды и поднялась на высоту в 12.5 метров. Как и первый полёт братьев Райт на 36.5 метров в 1903 году, это не кажется таким впечатляющим по современным стандартам, но достижение Годдарда вывело ракетостроение на кривую  экспоненциального роста, что привело к радикальным улучшениям в следующие 40 лет. Сам Годдард не отошёл от инноваций; его ракеты летели всё выше и выше, он добавил гиростабилизирующую конструкцию для управления полётом и ввёл парашютную систему спасения.
            На другом берегу Атлантики немецкие учёные начинали играть свою важную роль в развитии ракет. Под влиянием идей Германа Оберта о ракетных путешествиях, математикой космических полётов и реальными разработками ракет, опубликованными в его книге «Die Rakete zu den Planetenraumen» («Ракета для межпланетного пространства»), в Германии был основан ряд ракетных клубов и исследовательских институтов. Немецкий производитель велосипедов и машин Opel (теперь в составе General Motors) начал разработку реактивных машин, и в 1928 году Фритц фон Опель  вывел Opel-RAK.1 на гоночный трек. В 1929 году разработки расширили до самолёта Opel-Sander RAK1, который разбился во Франкфурте во время первого полёта. В Ленинграде газодинамическая лаборатория под руководством Глушко построила больше 100 разных вариантов двигателей, экспериментируя с разными техниками впрыскивания топлива.
            Под руководством Вернера фон Брауна и Вальтера Дорнбергера Общество космических полетов сыграло ключевую роль в разработке Vergeltungswaffe 2, также известной как Фау-2, самой прогрессивной ракеты того времени. Ракета Фау-2 сжигала смесь спирта в качестве топлива и жидкого кислорода в качестве окислителя, и достигла больших значений тяги, улучшив секундный расход массы до 150 килограмм в секунду. В Фау-2 сошлось большинство технологий, которые можно увидеть в современных ракетах, например, турбонасосные агрегаты и системы управления, а благодаря дальности в 300 км Фау-2 можно было запускать с побережья Балтики для бомбардировок Лондона во время Второй мировой. Тысячекилограммовая боеголовка на носу Фау-2 могла разрушать целые кварталы города, но ей не хватало точности для гарантированного удара по конкретной цели. К концу Второй мировой немецкие учёные уже прикрепляли ракеты к самолётам, чтобы те могли взлетать вертикально или лететь на реактивной тяге. Также они разрабатывали ракеты побольше – известные как межконтинентальные баллистические ракеты (МБР), они могли быть использованы для атаки США.
            С падением Третьего рейха в апреле 1945-го многие из этих технологий попали в руки Союзников. Ракетная программа Союзников была не такой продвинутой, и началась настоящая гонка, чтобы захватить как можно больше немецких разработок. Одни американцы захватили 300 вагонов с деталями ракет Фау-2 и отправили их в США. Более того, самые выдающиеся из немецких ракетчиков эмигрировали в Соединённые штаты, отчасти потому что там было лучше заниматься разработками, и отчасти чтобы избежать последствий за участие в военной машине нацистов. Фау-2 основательно выросла в американскую ракету Redstone, которая использовалась в программе Меркьюри.');
INSERT INTO history.themes (t_id, content) VALUES ('3', 'Под руководством Вернера фон Брауна и Вальтера Дорнбергера Общество космических полетов сыграло ключевую роль в разработке Vergeltungswaffe 2, также известной как Фау-2, самой прогрессивной ракеты того времени. Ракета Фау-2 сжигала смесь спирта в качестве топлива и жидкого кислорода в качестве окислителя, и достигла больших значений тяги, улучшив секундный расход массы до 150 килограмм в секунду. В Фау-2 сошлось большинство технологий, которые можно увидеть в современных ракетах, например, турбонасосные агрегаты и системы управления, а благодаря дальности в 300 км Фау-2 можно было запускать с побережья Балтики для бомбардировок Лондона во время Второй мировой. Тысячекилограммовая боеголовка на носу Фау-2 могла разрушать целые кварталы города, но ей не хватало точности для гарантированного удара по конкретной цели. К концу Второй мировой немецкие учёные уже прикрепляли ракеты к самолётам, чтобы те могли взлетать вертикально или лететь на реактивной тяге. Также они разрабатывали ракеты побольше – известные как межконтинентальные баллистические ракеты (МБР), они могли быть использованы для атаки США.
            С падением Третьего рейха в апреле 1945-го многие из этих технологий попали в руки Союзников. Ракетная программа Союзников была не такой продвинутой, и началась настоящая гонка, чтобы захватить как можно больше немецких разработок. Одни американцы захватили 300 вагонов с деталями ракет Фау-2 и отправили их в США. Более того, самые выдающиеся из немецких ракетчиков эмигрировали в Соединённые штаты, отчасти потому что там было лучше заниматься разработками, и отчасти чтобы избежать последствий за участие в военной машине нацистов. Фау-2 основательно выросла в американскую ракету Redstone, которая использовалась в программе Меркьюри." +
            Несмотря на эти разработки, СССР стали первыми, кто запустил на орбиту созданный человеком объект, то есть искусственный спутник. Под руководством главного конструктора Сергея Королёва, Фау-2 была скопирована и после усовершенствована в ракеты Р-1, Р-2 и Р-5. На рубеже 1950-х немецкие разработки были отброшены и заменёны изобретениями Алексея Михайловича Исаева, которые стали основной для первой советской МБР, Р-7. На основе Р-7 была разработана ракета Восток, которая 4 октября 1957 года  вывела  на орбиту первый спутник, Спутник-1.  Всего-то 12 лет прошло с конца Второй мировой. Запуск Спутника-1 стал первой большой новостью в космической гонке. Всего спустя пару недель после этого, СССР успешно запустили на орбиту Спутник-2 с собакой Лайкой на борту.
            Одной из проблем, которую в СССР не решили, было возвращение в атмосферу. Любое тело для выхода на орбиту другой планеты требует достаточно скорости, чтобы гравитационное притяжение планеты сглаживалось кривизной поверхности планеты. Однако во время возвращения с орбиты в атмосферу приводит к тому, что тело буквально врезается в неё, создавая огромное количество тепла. В 1951 году, Г. Дж. Аллен и А. Дж. Эггерс обнаружили, что, вопреки ожиданиям, не каплевидная форма с меньшим аэродинамическим сопротивлением, а тупая форма с большим сопротивлением снижает эффекты при входе в атмосферу, перенаправляя 99% энергии в окружающую среду. Находки Аллена и Эггерса  были опубликованы в 1958 году и использованы при создании пилотируемых капсул Mercury, Gemini, Apollo и Союза. Этот дизайн был позднее усовершенствован в Спейс шаттл который с помощью высокого угла вхождения формировал ударную волну на тепловой защите, чтобы отразить от неё большую часть тепла.
            Первый спутник Соединённых Штатов, Explorer-1, не станет таковым до 31 января 1958 года. Explorer-1 весил примерно в 30 раз меньше, чем Спутник-2, но зато имел на борту счётчики Гейгера, которые были использованы для первого научного открытия в космосе – радиационных поясов Ван-Аллена. Explorer-1 изначально разрабатывался под руководством армии США, и в октябре 1958 года был официально сформирован Национальный консультативный комитет по воздухоплаванию (NACA, сегодня NASA) для руководства космической программой. В то же время, в СССР из МБР Р-7 разработали семейства ракет Восток и Союз для использования в программе пилотируемых космических полётов. Ракета Союз используется до сих пор, остаётся наиболее часто используемой и самой надежной в истории ракетой, и после прекращения программы Space Shuttle в 2011 году это единственный способ попасть на МКС. Схожим образом, ракета Протон, разработанная в 1960-х, до сих пор используется для выведения тяжелых грузов на низкую околоземную орбиту.
            Несмотря на эти разработки, СССР стали первыми, кто запустил на орбиту созданный человеком объект, то есть искусственный спутник. Под руководством главного конструктора Сергея Королёва, Фау-2 была скопирована и после усовершенствована в ракеты Р-1, Р-2 и Р-5. На рубеже 1950-х немецкие разработки были отброшены и заменёны изобретениями Алексея Михайловича Исаева, которые стали основной для первой советской МБР, Р-7. На основе Р-7 была разработана ракета Восток, которая 4 октября 1957 года  вывела  на орбиту первый спутник, Спутник-1.  Всего-то 12 лет прошло с конца Второй мировой. Запуск Спутника-1 стал первой большой новостью в космической гонке. Всего спустя пару недель после этого, СССР успешно запустили на орбиту Спутник-2 с собакой Лайкой на борту.
            Одной из проблем, которую в СССР не решили, было возвращение в атмосферу. Любое тело для выхода на орбиту другой планеты требует достаточно скорости, чтобы гравитационное притяжение планеты сглаживалось кривизной поверхности планеты. Однако во время возвращения с орбиты в атмосферу приводит к тому, что тело буквально врезается в неё, создавая огромное количество тепла. В 1951 году, Г. Дж. Аллен и А. Дж. Эггерс обнаружили, что, вопреки ожиданиям, не каплевидная форма с меньшим аэродинамическим сопротивлением, а тупая форма с большим сопротивлением снижает эффекты при входе в атмосферу, перенаправляя 99% энергии в окружающую среду. Находки Аллена и Эггерса  были опубликованы в 1958 году и использованы при создании пилотируемых капсул Mercury, Gemini, Apollo и Союза. Этот дизайн был позднее усовершенствован в Спейс шаттл который с помощью высокого угла вхождения формировал ударную волну на тепловой защите, чтобы отразить от неё большую часть тепла.
            Первый спутник Соединённых Штатов, Explorer-1, не станет таковым до 31 января 1958 года. Explorer-1 весил примерно в 30 раз меньше, чем Спутник-2, но зато имел на борту счётчики Гейгера, которые были использованы для первого научного открытия в космосе – радиационных поясов Ван-Аллена. Explorer-1 изначально разрабатывался под руководством армии США, и в октябре 1958 года был официально сформирован Национальный консультативный комитет по воздухоплаванию (NACA, сегодня NASA) для руководства космической программой. В то же время, в СССР из МБР Р-7 разработали семейства ракет Восток и Союз для использования в программе пилотируемых космических полётов. Ракета Союз используется до сих пор, остаётся наиболее часто используемой и самой надежной в истории ракетой, и после прекращения программы Space Shuttle в 2011 году это единственный способ попасть на МКС. Схожим образом, ракета Протон, разработанная в 1960-х, до сих пор используется для выведения тяжелых грузов на низкую околоземную орбиту.');
INSERT INTO history.themes (t_id, content) VALUES ('4', 'Вскоре после первых запусков спутников, NASA разработало экспериментальный аппарат с ракетным двигателем, запускаемый с самолёта,  –  Х-15, который за свои 199 полётов с 1959 по 1968 год поставил многочисленные рекорды, включая новые рекорды скорости (7,274 км/ч) и высоты (108 км). Также Х-15 обеспечил NASA данными по оптимальным углам входа в атмосферу при возвращении из космоса.\n" +
           Следующее достижение в космосе тоже принадлежало СССР. 12 апреля 1961 года космонавт Юрий Гагарин стал первым человеком, побывавшим в космосе, и стал международной знаменитостью. На протяжении чуть менее двух часов Гагарин находился на орбите Земли в космической капсуле Восток-1 на высоте примерно 300 км и после возвращения в атмосферу катапультировался на высоте 6 км и спустился на землю на парашюте. Так, Гагарин стал самым известным советским человеком, путешествуя по всему миру как символ успеха СССР и их превосходства над Западом.
            Вскоре после успешного полёта Гагарина, американский астронавт  Алан Шепард достиг суборбитальной высоты в 187 км в капсуле Mercury Freedom 7. МБР Redstone, на которой Шепард отправился в полёт с мыса Канаверал, не обладала достаточной мощностью для выведения капсулы Mercury на орбиту, и до запуска претерпела ряд неприятных неудач, и давление на ракетчиков США увеличивалось. Тем не менее,  через несколько дней после полёта Шепарда президент Джон Ф. Кеннеди выступил перед конгрессом со знаменитыми теперь словами (перевод цитаты взят из книги по ссылке — прим. пер.):
            Я убеждён, что наша нация должна приложить все усилия для того, чтобы до конца десятилетия высадить человека на Луну и благополучно вернуть его на Землю.
            Несмотря на амбициозность такой задачи, проект NASA Mercury уже занимался разработкой технологий для высадки первого человека на Луне. В феврале 1962 года, более мощная ракета Atlas вывела на орбиту Джона Гленна, тем самым восстановив в некоторой мере паритет между США и СССР. Последний из полётов Mercury был запланирован на 1963 год, во время которого Гордон Купер провёл на орбите Земли почти полтора дня. Семейство ракет Atlas остается самым успешным и по сей день. Кроме выведения астронавтов в космос в рамках программы Mercury, Atlas использовалась и для выведения коммерческих, научных и военных спутников на орбиту.
            Последовавший за миссиями Mercury проект Gemini сделал важные шаги, необходимые для успешного полёта на Луну. Капсулу Gemini выводила еще более мощная МБР  Titan, и в этой капсуле астронавты могли оставаться в космосе до двух недель, во время которых астронавты впервые совершали выходы в открытый космос, процедуры сближения и стыковки с аппаратом Gemini. За 1965-1966 гг. было совершено впечатляющие десять полётов в рамках миссии Gemini. Высокие показатели успеха отражали улучшающуюся надёжность ракет и космических аппаратов NASA, и позволяли учёным собирать бесценную информацию для будущих лунных миссий Аполлон. Сама же ракета Titan остаётся одной из самых успешных и долгоживущих ракет (1959-2005), доставив на Марс космический аппарат Viking, отправив зонд Voyager во внешнюю солнечную систему и выведя на орбиту многочисленные тяжёлые спутники. Примерно в то же время, в начале 1960-х, разрабатывалось целое семейство многоцелевых ракет Delta. Семейство Delta стало рабочей лошадкой для космической программы США, выполнив более 300 запусков с надежностью более 95%! Многозадачность Delta была основана на возможности изменять величину полезной нагрузки, используя взаимозаменяемые ступени и внешние ускорители, которые могли быть добавлены для большей полезной нагрузки.
            К этому времени ход событий почти изменился.  Соединённые Штаты стартовали не так быстро, но все данные, полученные из ранних неудач, были использованы для усовершенствования конструкции и надёжности ракет. В СССР, несмотря на первоначальные успехи, не могли достигнуть такого же уровня успешных запусков, и это серьезно помешало их усилиям в предстоящей гонке на Луну.
            Чтобы долететь до Луны, нужна была ракета гораздо мощнее, чем Titan или Delta. Знаменитая теперь ракета, 110.6-метровая Saturn V (зацените этот классный рисунок) состояла из трех отдельных основных ступеней; корабля Apollo с небольшой четвертой ступенью с двигателем для обратного пути; и двухступенчатый  посадочный лунный модуль, с одной ступенью для спуска на лунную поверхность и второй для взлёта обратно с Луны. Saturn V была по большей части детищем и главным достижением Вернера фон Брауна, главного конструктора ракеты Фау-2 в Германии во время Второй мировой. Saturn V обладала возможностью запуска 140,000 кг на низкую околеземную орбиту и 48,600 кг на Луну. На фоне таких возможностей предыдущие ракеты кажутся незначительными, и по сей день Saturn V остаётся самой высокой, тяжёлой и самой мощной ракетой, когда-либо построенная до рабочего состояния (последняя на картинке в начале статьи). Усилия NASA достигли своей высшей точки 20 июля 1969 года с миссией Аполлон 11, когда Нил Армстронг стал первым человеком, когда-либо ступившим на Луну, всего 11,5 лет после первого успешного запуска спутника Explorer-1. Миссия Аполлон 11 стала первой из шести успешных высадок на Луну, которые происходили в период 1969-1972 гг.  Также была разработана меньшая конфигурация лунной ракеты, Saturn IB, которая использовалась в ранних испытаниях миссий Аполлон, а позднее была задействована для доставки трёх экипажей на американскую космическую станцию Skylab.');
INSERT INTO history.themes (t_id, content) VALUES ('5', 'Последней крупной инновацией NASA был Спейс шаттл. Идея Спейс шаттла состояла в создании многоразовой ракетной системы  для доставки груза и экипажей на низкую околоземную орбиту.  Обоснованием было то, что большую часть стоимости запуска составляло производство ракеты,   так что терять ступени ракеты после запуска было не особенно экономично. Представьте, что после каждого полёта из Нью-Йорка в Лондон приходится выбрасывать целый Boeing 747 или Airbus A380. При таком раскладе цены на билеты были бы совсем другими. Шаттл состоял из крылатого, похожего на самолёт космического корабля и твердотопливных ускорителей по бокам.  На орбиту корабль выводился жидкостными ракетными двигателями шаттла, топливо к которым подавалось из огромного внешнего топливного бака. После запуска внешний топливный бак и ускорители сбрасывались, и ускорители возвращали и использовали снова.\n" +
            В конце миссии шаттл входил в земную атмосферу, после чего планировал по извилистой траектории, чтобы приземлиться на посадочную полосу как обычный самолёт. В идеале, NASA обещало, что шаттл снизит стоимость пусков на 90%. Однако падая в воду, ускорители часто оказывались слишком повреждены и не подлежали ремонту, а усилия, которых требовало обслуживание теплозащиты шаттла с осмотром каждой из 24,000 плиток, вскоре привело к тому, что цена за килограмм полезной нагрузки на орбиту стала больше, чем  до этого у Saturn V.  Пять кораблей, Endeavour, Discovery, Challenger, Columbia и Atlantis, совершили 135 миссий с 1981 по 2011 год, пережив за это время трагические потери Challenger в 1986 и Columbia в 2003. И хотя шаттл облегчил задачу строительства МКС и выведения космического телескопа Hubble, главная цель – экономичные космические полёты – не была достигнута.
            Впрочем, теперь эту цель преследуют коммерческие космические компании вроде SpaceX, Reaction Engines, Blue Origin, Rocket Lab и Sierra Nevada Corporation.
            После завершения программы Спейс шаттл в 2011 году, возможности США по выводу людей в космос оказались серьезно ограничены. В данный момент NASA работают над Space Launch System (SLS), основной задачей которой является расширить границы пилотируемых полётов дальше низкой околоземной орбиты. Хотя проектированием и сборкой SLS занимается NASA, отдельные компоненты разрабатываются в партнерстве с компаниями Boeing, United Launch Alliance, Orbital ATK и Aerojet Rocketdyne. SLS станет самой мощной ракетой в истории, и потому разрабатывается в два этапа (как это было с Saturn IB и Saturn V). Первой станет  ракета, основанная на предыдущих ракетных проектах, с возможностью вывода полезной нагрузки в 70 тонн. Её целью будет проведение космическим аппаратом Orion двух пролётов Луны, одного без экипажа и второго с ним. Вторая, более продвинутая версия SLS с возможностью вывода на низкую околоземную орбиту полезной нагрузки в 130 тонн, отправит научное оборудование, груз и пилотируемый корабль Orion в дальний космос. Первый полёт корабля Orion к Луне без экипажа запланирован на 2018 год, в то время как пилотируемые миссии ожидаются в 2021-2023 годах. К 2026 году NASA планирует отправить Orion вместе с экипажем к астероиду, который будет заранее помещен на лунную орбиту в ходе другой миссии по захвату астероида.
            Blue Origin, аэрокосмическая компания, основателем которой является создатель Amazon Джефф Безос, выбрала схожий подход к вертикальному пуску и посадке ракеты для повторного использования и снижения стоимости.  Компания постепенно движется от суборбитальных полётов к орбитальным, следуя своему девизу «Gradatim Ferocity» (что переводится с латыни как шаг за шагом, решительно). Ракета New Shepard совершила свой первый испытательный полёт в апреле 2015 года. В ноябре того же года ракеты успешно приземлилась после суборбитального полёта на высоту в 100 км, и в январе 2016 была достигнута высота в 101 км. Blue Origins надеется расширить свои возможности до запуска людей уже в 2018 году.
            Reaction Engines – британская аэрокосмическая компания, исследующая космические реактивные двигатели, сосредоточена на одноступенчатом космолёте Skylon многоразового использования. Основным на Skylon будет двигатель SABRE, в основе которого лежит ракетный комбинированный цикл, т.е. сочетание воздушно-реактивного и ракетного двигатели с общим потоком, который можно повторно использовать в 200 полётах. Skylon считают, что с такой системой вывод одного килограмма нагрузки на орбиту в стоимости может снизиться с $1500 (на начало 2016) до $900. Согласно проекту, с жидким водородом в качестве горючего, Skylon будет подниматься со специальной взлётной полосы и ускоряться до скорости 5 М на высоте 28.5 км, используя атмосферный кислород как окисляющий компонент топлива. Эта «дышащая» часть двигателя SABRE работает по тем же принципам, что и воздушно-реактивный двигатель. Турбокомпрессор увеличивает перепад давления входящего атмосферного воздуха, который сначала проходит через теплообменник, который охлаждает горячий воздух, сталкивающийся с двигателем на сверхзвуковых скоростях. Сжатый воздух подаётся в камеру сгорания, где он воспламеняется с жидким водородом. Как и в обычном реактивном двигателе, чтобы вместить как можно больше окисляющего компонента в камеру сгорания и увеличить тягу двигателя, важен очень высокий перепад давления. Поскольку на большой высоте атмосферный кислород иссякает, двигатели переключаются на запасы жидкого кислорода, превращая двигатель в ракетный двигатель замкнутого цикла и поднимая корабль Skylon на орбиту.
            Теоретические преимущества двигателя SABRE состоят в его  высокоэффективном расходе топлива и низкой массе, что облегчает задачу одноступенчатого выхода на орбиту. После отделения полезной нагрузки до 15 тонн корабль Skylon войдёт в атмосферу подобно Спейс шаттлу, оставаясь в безопасности благодаря теплозащите, и приземлится на посадочную полосу. Первые наземные испытания двигателя SABRE намечены на 2019 год, а первые беспилотные испытательные полёты ожидаются в 2025 году.
            Blue Origin, аэрокосмическая компания, основателем которой является создатель Amazon Джефф Безос, выбрала схожий подход к вертикальному пуску и посадке ракеты для повторного использования и снижения стоимости.  Компания постепенно движется от суборбитальных полётов к орбитальным, следуя своему девизу «Gradatim Ferocity» (что переводится с латыни как шаг за шагом, решительно). Ракета New Shepard совершила свой первый испытательный полёт в апреле 2015 года. В ноябре того же года ракеты успешно приземлилась после суборбитального полёта на высоту в 100 км, и в январе 2016 была достигнута высота в 101 км. Blue Origins надеется расширить свои возможности до запуска людей уже в 2018 году.');
INSERT INTO history.themes (t_id, content) VALUES ('6', 'Наконец, компания Rocket Lab, которая находится в Новой Зеландии, разрабатывает углекомпозитную ракету Electron на жидком топливе, которая сможет выводить на низкую околоземную орбиту 110 кг полезной нагрузки. Поэтому в Rocket Lab сосредоточились на частых запусках для доставки на орбиту груза с малой массой, например наноспутников. Цель компании – сделать космос доступным так часто и недорого, что можно будет надёжно и быстро запускать маломасштабные спутники , которые будут обеспечивать нас научными экспериментами и скоростным интернетом. Предполагается, что стоимость запуска Rocket Lab составит $5 миллионов, и компания сможет осуществлять 100 запусков в год и требовать меньше топлива чем Boeing 737 при перелёте из Сан-Франциско в Лос-Анджелес. Главной сложностью является создание полностью углекомпозитных баков для жидкого топлива, что нужно для эффективного использования топлива. На сегодняшний день содержание криогенного (сильно охлаждённого) жидкого топлива, например, жидкого водорода и жидкого кислорода, остаётся работой для металлических сплавов. Остаётся беспокойство и о возможных утечках из-за микротрещин, которые появляются в смолистом веществе композита при криогенных температурах. В композитах существует несоответствие коэффициентов теплового расширения усиленного волокна и смолистого вещества, что способствует тепловой нагрузке на композит, когда тот остывает до криогенной температуры после высоких температуры и давления при затвердевании. Циклы температуры и давления во время процедур закачивания и откачивания жидкого кислород-водорода усиливают повторную нагрузку, что в итоге может привести к появлению трещин в корпусе, сквозь которые легко будут проходить молекулы водорода и кислорода. Такая утечка создаст реальную угрозу взрыва.');
