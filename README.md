# Thomas Fenaroli
## CS50 Spring 2021, Lab 1

GitHub username: tfenaroli

## Problem B

``` bash
ln -s /thayerfs/home/f004y3m/cs50-dev/shared/COVID-19/data_tables/vaccine_data/us_data/hourly/vaccine_data_us.csv vaccine_data_us.csv
```

# Problem C

``` bash
head -n 1 vaccination_data_us.csv
```

# Problem D

``` bash
head -n 1 vaccine_data_us.csv | sed 's/,/\n/g'
```

# Problem E

``` bash
grep 'New Hampshire' vaccine_data_us.csv
```
# Problem F

``` bash
grep 'All' vaccine_data_us.csv | cut -d "," -f2,10
```

# Problem G

``` bash
grep 'All' vaccine_data_us.csv | cut -d "," -f2,10 | sort -t "," -k2 -nr | head -10
```

# Problem H

``` bash
grep 'All' vaccine_data_us.csv | cut -d "," -f2,10 | sort -t "," -k2 -nr | head -10 | sed s/","/"|"/ | sed s/^/"|"/ | sed s/$/"|"/
```

# Problem I

``` bash

```
