rm(list=ls()); cat("\014") # Clear Workspace and Console

library(dplyr)
library(plotly)
library(htmlwidgets)
library(apng)

load("Yearly Record data.RData")

##1900 Map


year.record$`1900`$Color = factor(year.record$`1900`$Color)

demresult1900 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1900`$Electoral.Vote.Democrat))
represult1900 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1900`$Electoral.Vote.Republican))


Title1900 <- paste0("Presidential Electoral Results by State", "\n", demresult1900, "   ", represult1900, "\n","1900")


map1900 <- plot_geo(year.record$`1900`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1900`$Color), locations = year.record$`1900`$ST,
                text = year.record$`1900`$Winner,
                color = ~as.numeric(year.record$`1900`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1900)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1900

saveWidget(map1900, 'Electoral.College.Results.1900.html')           

##1904 Map


year.record$`1904`$Color = factor(year.record$`1904`$Color)

demresult1904 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1904`$Electoral.Vote.Democrat))
represult1904 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1904`$Electoral.Vote.Republican))


Title1904 <- paste0("Presidential Electoral Results by State", "\n", demresult1904, "   ", represult1904, "\n","1904")

map1904 <- plot_geo(year.record$`1904`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1904`$Color), locations = year.record$`1904`$ST,
                text = year.record$`1904`$Winner,
                color = ~as.numeric(year.record$`1904`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1904)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1904

saveWidget(map1904, 'Electoral.College.Results.1904.html')           

##1908 Map


year.record$`1908`$Color = factor(year.record$`1908`$Color)

demresult1908 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1908`$Electoral.Vote.Democrat))
represult1908 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1908`$Electoral.Vote.Republican))


Title1908 <- paste0("Presidential Electoral Results by State", "\n", demresult1908, "   ", represult1908, "\n","1908")

map1908 <- plot_geo(year.record$`1908`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1908`$Color), locations = year.record$`1908`$ST,
                text = year.record$`1908`$Winner,
                color = ~as.numeric(year.record$`1908`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1908)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1908

saveWidget(map1908, 'Electoral.College.Results.1908.html')           


##1912 Map


year.record$`1912`$Color = factor(year.record$`1912`$Color)

demresult1912 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1912`$Electoral.Vote.Democrat))
represult1912 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1912`$Electoral.Vote.Republican))


Title1912 <- paste0("Presidential Electoral Results by State", "\n", demresult1912, "   ", represult1912, "\n","1912")

map1912 <- plot_geo(year.record$`1912`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1912`$Color), locations = year.record$`1912`$ST,
                text = year.record$`1912`$Winner,
                color = ~as.numeric(year.record$`1912`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1912)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1912

saveWidget(map1912, 'Electoral.College.Results.1912.html')           


##1916 Map


year.record$`1916`$Color = factor(year.record$`1916`$Color)

demresult1916 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1916`$Electoral.Vote.Democrat))
represult1916 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1916`$Electoral.Vote.Republican))

Title1916 <- paste0("Presidential Electoral Results by State", "\n", demresult1916, "   ", represult1916, "\n","1916")

map1916 <- plot_geo(year.record$`1916`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1916`$Color), locations = year.record$`1916`$ST,
                text = year.record$`1916`$Winner,
                color = ~as.numeric(year.record$`1916`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1916)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1916

saveWidget(map1916, 'Electoral.College.Results.1916.html')           


##1920 Map


year.record$`1920`$Color = factor(year.record$`1920`$Color)

demresult1920 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1920`$Electoral.Vote.Democrat))
represult1920 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1920`$Electoral.Vote.Republican))

Title1920 <- paste0("Presidential Electoral Results by State", "\n", demresult1920, "   ", represult1920, "\n","1920")

map1920 <- plot_geo(year.record$`1920`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1920`$Color), locations = year.record$`1920`$ST,
                text = year.record$`1920`$Winner,
                color = ~as.numeric(year.record$`1920`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1920)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1920

saveWidget(map1920, 'Electoral.College.Results.1920.html')           


##1924 Map


year.record$`1924`$Color = factor(year.record$`1924`$Color)

table(year.record$`1924`$Color)

demresult1924 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1924`$Electoral.Vote.Democrat))
represult1924 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1924`$Electoral.Vote.Republican))

Title1924 <- paste0("Presidential Electoral Results by State", "\n", demresult1924, "   ", represult1924, "\n","1924")

map1924 <- plot_geo(year.record$`1924`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1924`$Color), locations = year.record$`1924`$ST,
                text = year.record$`1924`$Winner,
                color = ~as.numeric(year.record$`1924`$Color),  colors = c("Blue","Red", "Yellow"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1924)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1924

saveWidget(map1924, 'Electoral.College.Results.1924.html')           


##1928 Map


year.record$`1928`$Color = factor(year.record$`1928`$Color)

demresult1928 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1928`$Electoral.Vote.Democrat))
represult1928 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1928`$Electoral.Vote.Republican))


Title1928 <- paste0("Presidential Electoral Results by State", "\n", demresult1928, "   ", represult1928, "\n","1928")

map1928 <- plot_geo(year.record$`1928`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1928`$Color), locations = year.record$`1928`$ST,
                text = year.record$`1928`$Winner,
                color = ~as.numeric(year.record$`1928`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1928)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1928

saveWidget(map1928, 'Electoral.College.Results.1928.html')           

##1932 Map


year.record$`1932`$Color = factor(year.record$`1932`$Color)

demresult1932 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1932`$Electoral.Vote.Democrat))
represult1932 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1932`$Electoral.Vote.Republican))

Title1932 <- paste0("Presidential Electoral Results by State", "\n", demresult1932, "   ", represult1932, "\n","1932")

map1932 <- plot_geo(year.record$`1932`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1932`$Color), locations = year.record$`1932`$ST,
                text = year.record$`1932`$Winner,
                color = ~as.numeric(year.record$`1932`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1932)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1932

saveWidget(map1932, 'Electoral.College.Results.1932.html')           

##1936 Map


year.record$`1936`$Color = factor(year.record$`1936`$Color)

demresult1936 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1936`$Electoral.Vote.Democrat))
represult1936 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1936`$Electoral.Vote.Republican))

Title1936 <- paste0("Presidential Electoral Results by State", "\n", demresult1936, "   ", represult1936, "\n","1936")

map1936 <- plot_geo(year.record$`1936`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1936`$Color), locations = year.record$`1936`$ST,
                text = year.record$`1936`$Winner,
                color = ~as.numeric(year.record$`1936`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1936)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1936

saveWidget(map1936, 'Electoral.College.Results.1936.html')           

##1940 Map


year.record$`1940`$Color = factor(year.record$`1940`$Color)

demresult1940 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1940`$Electoral.Vote.Democrat))
represult1940 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1940`$Electoral.Vote.Republican))

Title1940 <- paste0("Presidential Electoral Results by State", "\n", demresult1940, "   ", represult1940, "\n","1940")

map1940 <- plot_geo(year.record$`1940`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1940`$Color), locations = year.record$`1940`$ST,
                text = year.record$`1940`$Winner,
                color = ~as.numeric(year.record$`1940`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1940)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1940

saveWidget(map1940, 'Electoral.College.Results.1940.html')           

##1944 Map


year.record$`1944`$Color = factor(year.record$`1944`$Color)

demresult1944 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1944`$Electoral.Vote.Democrat))
represult1944 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1944`$Electoral.Vote.Republican))

Title1944 <- paste0("Presidential Electoral Results by State", "\n", demresult1944, "   ", represult1944, "\n","1944")

map1944 <- plot_geo(year.record$`1944`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1944`$Color), locations = year.record$`1944`$ST,
                text = year.record$`1944`$Winner,
                color = ~as.numeric(year.record$`1944`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1944)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1944

saveWidget(map1944, 'Electoral.College.Results.1944.html')           

##1948 Map


year.record$`1948`$Color = factor(year.record$`1948`$Color)

demresult1948 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1948`$Electoral.Vote.Democrat))
represult1948 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1948`$Electoral.Vote.Republican))

Title1948 <- paste0("Presidential Electoral Results by State", "\n", demresult1948, "   ", represult1948, "\n","1948")

map1948 <- plot_geo(year.record$`1948`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1948`$Color), locations = year.record$`1948`$ST,
                text = year.record$`1948`$Winner,
                color = ~as.numeric(year.record$`1948`$Color),  colors = c("Blue","Red", "Yellow"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1948)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1948

saveWidget(map1948, 'Electoral.College.Results.1948.html')           

##1952 Map


year.record$`1952`$Color = factor(year.record$`1952`$Color)

demresult1952 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1952`$Electoral.Vote.Democrat))
represult1952 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1952`$Electoral.Vote.Republican))

Title1952 <- paste0("Presidential Electoral Results by State", "\n", demresult1952, "   ", represult1952, "\n","1952")

map1952 <- plot_geo(year.record$`1952`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1952`$Color), locations = year.record$`1952`$ST,
                text = year.record$`1952`$Winner,
                color = ~as.numeric(year.record$`1952`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1952)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1952

saveWidget(map1952, 'Electoral.College.Results.1952.html')           

##1956 Map


year.record$`1956`$Color = factor(year.record$`1956`$Color)

demresult1956 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1956`$Electoral.Vote.Democrat))

represult1956 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1956`$Electoral.Vote.Republican))

Title1956 <- paste0("Presidential Electoral Results by State", "\n", demresult1956, "   ", represult1956, "\n","1956")

map1956 <- plot_geo(year.record$`1956`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1956`$Color), locations = year.record$`1956`$ST,
                text = year.record$`1956`$Winner,
                color = ~as.numeric(year.record$`1956`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1956)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1956

saveWidget(map1956, 'Electoral.College.Results.1956.html')           

##1960 Map


year.record$`1960`$Color = factor(year.record$`1960`$Color)

demresult1960 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1960`$Electoral.Vote.Democrat))
represult1960 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1960`$Electoral.Vote.Republican))


Title1960 <- paste0("Presidential Electoral Results by State", "\n", demresult1960, "   ", represult1960, "\n","1960")

map1960 <- plot_geo(year.record$`1960`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1960`$Color), locations = year.record$`1960`$ST,
                text = year.record$`1960`$Winner,
                color = ~as.numeric(year.record$`1960`$Color),  colors = c("Blue","Red", "Yellow"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1960)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1960

saveWidget(map1960, 'Electoral.College.Results.1960.html')           

##1964 Map


year.record$`1964`$Color = factor(year.record$`1964`$Color)

demresult1964 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1964`$Electoral.Vote.Democrat))
represult1964 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1964`$Electoral.Vote.Republican))

Title1964 <- paste0("Presidential Electoral Results by State", "\n", demresult1964, "   ", represult1964, "\n","1964")

map1964 <- plot_geo(year.record$`1964`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1964`$Color), locations = year.record$`1964`$ST,
                text = year.record$`1964`$Winner,
                color = ~as.numeric(year.record$`1964`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1964)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1964

saveWidget(map1964, 'Electoral.College.Results.1964.html')           

##1968 Map


year.record$`1968`$Color = factor(year.record$`1968`$Color)

demresult1968 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1968`$Electoral.Vote.Democrat))
represult1968 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1968`$Electoral.Vote.Republican))

Title1968 <- paste0("Presidential Electoral Results by State", "\n", demresult1968, "   ", represult1968, "\n","1968")

map1968 <- plot_geo(year.record$`1968`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1968`$Color), locations = year.record$`1968`$ST,
                text = year.record$`1968`$Winner,
                color = ~as.numeric(year.record$`1968`$Color),  colors = c("Blue","Red", "Yellow"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1968)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1968

saveWidget(map1968, 'Electoral.College.Results.1968.html')           

##1972 Map


year.record$`1972`$Color = factor(year.record$`1972`$Color)

demresult1972 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1972`$Electoral.Vote.Democrat))
represult1972 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1972`$Electoral.Vote.Republican))

Title1972 <- paste0("Presidential Electoral Results by State", "\n", demresult1972, "   ", represult1972, "\n","1972")

map1972 <- plot_geo(year.record$`1972`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1972`$Color), locations = year.record$`1972`$ST,
                text = year.record$`1972`$Winner,
                color = ~as.numeric(year.record$`1972`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1972)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1972

saveWidget(map1972, 'Electoral.College.Results.1972.html')           

##1976 Map


year.record$`1976`$Color = factor(year.record$`1976`$Color)

demresult1976 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1976`$Electoral.Vote.Democrat))
represult1976 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1976`$Electoral.Vote.Republican))

Title1976 <- paste0("Presidential Electoral Results by State", "\n", demresult1976, "   ", represult1976, "\n","1976")

map1976 <- plot_geo(year.record$`1976`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1976`$Color), locations = year.record$`1976`$ST,
                text = year.record$`1976`$Winner,
                color = ~as.numeric(year.record$`1976`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1976)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1976

saveWidget(map1976, 'Electoral.College.Results.1976.html')           

##1980 Map


year.record$`1980`$Color = factor(year.record$`1980`$Color)

demresult1980 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1980`$Electoral.Vote.Democrat))
represult1980 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1980`$Electoral.Vote.Republican))

Title1980 <- paste0("Presidential Electoral Results by State", "\n", demresult1980, "   ", represult1980, "\n","1980")

map1980 <- plot_geo(year.record$`1980`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1980`$Color), locations = year.record$`1980`$ST,
                text = year.record$`1980`$Winner,
                color = ~as.numeric(year.record$`1980`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1980)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1980

saveWidget(map1980, 'Electoral.College.Results.1980.html')           

##1984 Map


year.record$`1984`$Color = factor(year.record$`1984`$Color)

demresult1984 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1984`$Electoral.Vote.Democrat))
represult1984 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1984`$Electoral.Vote.Republican))

Title1984 <- paste0("Presidential Electoral Results by State", "\n", demresult1984, "   ", represult1984, "\n","1984")

map1984 <- plot_geo(year.record$`1984`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1984`$Color), locations = year.record$`1984`$ST,
                text = year.record$`1984`$Winner,
                color = ~as.numeric(year.record$`1984`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1984)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1984

saveWidget(map1984, 'Electoral.College.Results.1984.html')           

##1988 Map


year.record$`1988`$Color = factor(year.record$`1988`$Color)

demresult1988 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1988`$Electoral.Vote.Democrat))
represult1988 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1988`$Electoral.Vote.Republican))

Title1988 <- paste0("Presidential Electoral Results by State", "\n", demresult1988, "   ", represult1988, "\n","1988")

map1988 <- plot_geo(year.record$`1988`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1988`$Color), locations = year.record$`1988`$ST,
                text = year.record$`1988`$Winner,
                color = ~as.numeric(year.record$`1988`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1988)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1988

saveWidget(map1988, 'Electoral.College.Results.1988.html')           

##1992 Map


year.record$`1992`$Color = factor(year.record$`1992`$Color)

demresult1992 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1992`$Electoral.Vote.Democrat))
represult1992 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1992`$Electoral.Vote.Republican))

Title1992 <- paste0("Presidential Electoral Results by State", "\n", demresult1992, "   ", represult1992, "\n","1992")

map1992 <- plot_geo(year.record$`1992`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1992`$Color), locations = year.record$`1992`$ST,
                text = year.record$`1992`$Winner,
                color = ~as.numeric(year.record$`1992`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1992)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1992

saveWidget(map1992, 'Electoral.College.Results.1992.html')           

##1996 Map


year.record$`1996`$Color = factor(year.record$`1996`$Color)

demresult1996 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`1996`$Electoral.Vote.Democrat))
represult1996 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`1996`$Electoral.Vote.Republican))

Title1996 <- paste0("Presidential Electoral Results by State", "\n", demresult1996, "   ", represult1996, "\n","1996")

map1996 <- plot_geo(year.record$`1996`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`1996`$Color), locations = year.record$`1996`$ST,
                text = year.record$`1996`$Winner,
                color = ~as.numeric(year.record$`1996`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title1996)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map1996

saveWidget(map1996, 'Electoral.College.Results.1996.html')           

##2000 Map


year.record$`2000`$Color = factor(year.record$`2000`$Color)

demresult2000 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`2000`$Electoral.Vote.Democrat))
represult2000 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`2000`$Electoral.Vote.Republican))

Title2000 <- paste0("Presidential Electoral Results by State", "\n", demresult2000, "   ", represult2000, "\n","2000")

map2000 <- plot_geo(year.record$`2000`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`2000`$Color), locations = year.record$`2000`$ST,
                text = year.record$`2000`$Winner,
                color = ~as.numeric(year.record$`2000`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title2000)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map2000

saveWidget(map2000, 'Electoral.College.Results.2000.html')           

##2004 Map


year.record$`2004`$Color = factor(year.record$`2004`$Color)

demresult2004 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`2004`$Electoral.Vote.Democrat))
represult2004 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`2004`$Electoral.Vote.Republican))

Title2004 <- paste0("Presidential Electoral Results by State", "\n", demresult2004, "   ", represult2004, "\n","2004")

map2004 <- plot_geo(year.record$`2004`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`2004`$Color), locations = year.record$`2004`$ST,
                text = year.record$`2004`$Winner,
                color = ~as.numeric(year.record$`2004`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title2004)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map2004

saveWidget(map2004, 'Electoral.College.Results.2004.html')           

##2008 Map


year.record$`2008`$Color = factor(year.record$`2008`$Color)

demresult2008 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`2008`$Electoral.Vote.Democrat))
represult2008 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`2008`$Electoral.Vote.Republican))

Title2008 <- paste0("Presidential Electoral Results by State", "\n", demresult2008, "   ", represult2008, "\n","2008")

map2008 <- plot_geo(year.record$`2008`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`2008`$Color), locations = year.record$`2008`$ST,
                text = year.record$`2008`$Winner,
                color = ~as.numeric(year.record$`2008`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title2008)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map2008

saveWidget(map2008, 'Electoral.College.Results.2008.html')           


##2012 Map


year.record$`2012`$Color = factor(year.record$`2012`$Color)

demresult2012 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`2012`$Electoral.Vote.Democrat))
represult2012 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`2012`$Electoral.Vote.Republican))

Title2012 <- paste0("Presidential Electoral Results by State", "\n", demresult2012, "   ", represult2012, "\n","2012")

map2012 <- plot_geo(year.record$`2012`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`2012`$Color), locations = year.record$`2012`$ST,
                text = year.record$`2012`$Winner,
                color = ~as.numeric(year.record$`2012`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title2012)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map2012

saveWidget(map2012, 'Electoral.College.Results.2012.html')           

##2016 Map


year.record$`2016`$Color = factor(year.record$`2016`$Color)

demresult2016 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`2016`$Electoral.Vote.Democrat))
represult2016 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`2016`$Electoral.Vote.Republican))

Title2016 <- paste0("Presidential Electoral Results by State", "\n", demresult2016, "   ", represult2016, "\n","2016")

map2016 <- plot_geo(year.record$`2016`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`2016`$Color), locations = year.record$`2016`$ST,
                text = year.record$`2016`$Winner,
                color = ~as.numeric(year.record$`2016`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title2016)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map2016

saveWidget(map2016, 'Electoral.College.Results.2016.html')           

##2020 Map


year.record$`2020`$Color = factor(year.record$`2020`$Color)

demresult2020 <- paste0("Democrat Electoral votes (Blue): ", sum(year.record$`2020`$Electoral.Vote.Democrat))
represult2020 <- paste0("Republican Electoral votes (Red): ", sum(year.record$`2020`$Electoral.Vote.Republican))

Title2020 <- paste0("Presidential Electoral Results by State", "\n", demresult2020, "   ", represult2020, "\n","2020")

map2020 <- plot_geo(year.record$`2020`, locationmode = 'USA-states') %>%
  add_trace(    z = ~as.numeric(year.record$`2020`$Color), locations = year.record$`2020`$ST,
                text = year.record$`2020`$Winner,
                color = ~as.numeric(year.record$`2020`$Color),  colors = c("Blue","Red"), showscale = FALSE
  ) %>%
  layout(geo = list(scope = "usa"), title = Title2020)

t <- list(
  family = "sans serif",
  size = 14,
  color = toRGB("grey50"))

map2020

saveWidget(map2020, 'Electoral.College.Results.2020.html')           



map.list <-  list.files(pattern = "Electoral.College.Results.*",
                       full.names = TRUE)
  
  

imgs <- list.files(path = "Images",
                   pattern = "*.png",
                   full.names = TRUE)
is.vector(imgs)

apng(input_files = imgs, output_file = "elections1900-2020.png",
     num_plays = 1, delay_num = 4, delay_den = 1,
     dispose_op = 0, blend_op = 0)
