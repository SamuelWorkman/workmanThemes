pak::pak("SamuelWorkman/workmanThemes")

library(ggplot2)
library(workmanThemes)

#set_workman_defaults()

use_workman()

ggplot(mtcars, aes(wt, mpg, colour = factor(cyl))) +
  geom_point() +
  scale_colour_workman_d() +
  labs_workman(
    title = "Fuel economy declines as vehicle weight increases",
    subtitle = "Discrete Flexoki palette with session defaults",
    x = "Vehicle weight",
    y = "Miles per gallon",
    colour = "Cylinders",
    source = "Motor Trend Car Road Tests (1974)"
  )

df <- data.frame(
  county = c("Barbour", "Doddridge", "Harrison", "Marion", "Monongalia"),
  spending = c(950000, 720000, 1650000, 1280000, 1900000)
)

ggplot(df, aes(x = reorder(county, spending), y = spending, fill = spending)) +
  geom_col() +
  coord_flip() +
  scale_fill_workman_c(palette = "blue") +
  scale_y_dollar_workman() +
  labs_workman(
    title = "Illustrative county spending",
    subtitle = "Dollar helper with a continuous fill ramp",
    x = NULL,
    y = "Spending",
    source = "Illustrative example data"
  ) +
  theme(legend.position = "none")

df <- data.frame(
  year = 2020:2024,
  share = c(0.21, 0.24, 0.28, 0.26, 0.31)
)

ggplot(df, aes(year, share)) +
  geom_line() +
  geom_point(colour = workman_cols("blue")) +
  scale_y_percent_workman(scale = 1) +
  labs_workman(
    title = "Illustrative percentage trend",
    subtitle = "Percent formatting helper",
    x = "Year",
    y = "Share",
    source = "Illustrative data"
  )

library(sf)

use_workman(map = TRUE)

nc <- sf::st_read(
  system.file("shape/nc.shp", package = "sf"),
  quiet = TRUE
)

ggplot(nc) +
  geom_sf_workman(aes(fill = BIR74)) +
  scale_fill_workman_map_b(
    palette = "green",
    labels = scales::label_comma()
  ) +
  labs_workman(
    title = "Example county-style choropleth",
    subtitle = "Binned legend improves interpretability",
    fill = "Births",
    source = "sf example dataset"
  )

ggplot(nc) +
  geom_sf_workman(aes(fill = AREA)) +
  scale_fill_workman_map_c(
    palette = "blue",
    labels = scales::label_number(accuracy = 0.1)
  ) +
  labs_workman(
    title = "Continuous choropleth example",
    subtitle = "Sequential palette with vertical colour bar",
    fill = "Area",
    source = "sf example dataset"
  )