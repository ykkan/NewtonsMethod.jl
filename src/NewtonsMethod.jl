module NewtonsMethod

using ForwardDiff

function newtonroot(f, fp; x0, tol=1e-7, maxiter=1000)
    abserror = Inf
    iter = 1
    x = x0
    while abserror > tol && iter <= maxiter
        x_new = x - f(x)/fp(x)
        iter = iter +1
        abserror = abs(x_new - x)
        x = x_new
    end
    return x
end

function newtonroot(f; x0, tol = 1e-7, maxiter=1000)
    fp = x -> ForwardDiff.derivative(f, x)
    newtonroot(f, fp; x0=x0, tol=tol, maxiter=maxiter)
end

export newtonroot
end
