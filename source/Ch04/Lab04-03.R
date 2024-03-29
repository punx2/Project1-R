cafe <- list(espresso = c(4, 5, 3, 6, 5, 4, 7),
             americano = c(63, 68, 64, 68, 72, 89, 94),
             latte = c(61, 70, 59, 71, 71, 92, 88),
             price = c(2, 2.5, 3.0),
             menu = c('espresso','americano','latte'))

cafe$menu <- factor(cafe$menu)

names(cafe$price) <- cafe$menu

sale.espresso <- cafe$price['espresso'] * cafe$espresso
sale.americano <- cafe$price['americano'] * cafe$americano
sale.latte <- cafe$price['latte'] * cafe$americano

sale.day <- sale.espresso + sale.americano + sale.latte  # 요일별 매출액
names(sale.day) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
sum(sale.day)                              # 총 매출액
sale.mean <- mean(sale.day)                # 평균 매출액
names(sale.day[sale.day >= sale.mean] )    # 평균 매출액 이상인 요일 추출