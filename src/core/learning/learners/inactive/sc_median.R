# Copyright 2013, 2014 by Christopher L. Simons

learner <- list(name="SC_{median}", learn=function(data.)
{
    assessment. <- assessments[["SC_{\\widetilde{x}}"]]
    result <- pc(suffStat  = list(data=data.,
                                  assessment=assessment.),
                 indepTest = ci.test.partition,
                 p         = ncol(data.),
                 alpha     = assessment.$alpha_mid)
    nodes(result@graph) <- names(data.)
    return (result)
})
class(learner) <- "learner"
learners[[length(learners) + 1]] <- learner
