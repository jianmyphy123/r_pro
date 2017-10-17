library(ggvis)

# attach(mtcars)
# plot(mpg, wt)

mtcars %>% ggvis(~mpg, ~wt) %>% layer_points()
# mtcars %>% ggvis(~mpg, ~wt) %>% layer_lines()
# mtcars %>% ggvis(~mpg, ~wt) %>% layer_bars()
# mtcars %>% ggvis(~mpg, ~wt) %>% layer_smooths()
mtcars %>% ggvis(~mpg, ~wt, fill:='red') %>% layer_points() %>% layer_smooths()

mtcars %>% ggvis(~mpg, ~wt, fill= ~cyl) %>% layer_points() %>% layer_smooths()

mtcars$cyl = factor(mtcars$cyl)
mtcars %>% ggvis(~mpg, ~wt, fill= ~cyl) %>% layer_points() %>% layer_smooths()

mtcars %>% 
  ggvis(~mpg, ~wt, fill= ~cyl) %>% 
  layer_points() %>% 
  layer_smooths() %>% 
  add_axis('x', title = 'MPG', values = c(10:35)) %>%
  add_axis('y', title = 'WT', subdivide = 4)