# Christopher L. Simons, 2013

learner <- list(name  = "pcor::pearson::0.05",
                learn = function(data.) {
                    result <- pc(suffStat = list(data = data.,
                                                 method_cor = "pearson"),
                                 indepTest = ci_pcor,
                                 p         = ncol(data.),
                                 alpha     = 0.05)
                    nodes(result@graph) <- names(data.)
                    return (result)
                })

class(learner) <- "learner"
learners[[length(learners) + 1]] <- learner