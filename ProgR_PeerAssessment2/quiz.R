cube <- function(x, n) {
        x ^ 3
}

x <- 1:10
if (x > 5) { # 'x' is a vector of length 10 and 'if' can only test a single logical statement.
        x <- 0
}

f <- function(x) {
        g <- function(y) { y + z }
        z <- 4
        x + g(x)
}

h <- function(x, y = NULL, d = 3L) {
        z <- cbind(x, d)
        if (!is.null(y))
                z <- z + y
        else
                z <- z + f
        g <- x + y / z
        if(d == 3L)
                return(g)
        g <- g + 10
        g
}
