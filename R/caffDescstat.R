#' Calculate descriptive statistics of simulated PK parameters
#'
#' \code{caffDescstat} will calculate descriptive statistics of simulated PK parameters
#'
#' @return The descriptive statistics of pharmacokinetic parameters
#' @param caffPkparamData data frame generated by caffPkparam function
#' @export
#' @examples 
#' caffDescstat(caffPkparam(20,500))
#' caffDescstat(caffPkparamMulti(20,500))
#' caffDescExample <- cbind(caffDescstat(caffPkparam(20,500)), 
#'                          caffDescstat(caffPkparam(50,500))[,2])
#' colnames(caffDescExample)[2:3] <- c('20 kg', '50 kg')      
#' caffDescExample
#' @import dplyr
#' @seealso \url{https://asancpt.github.io/caffsim}

caffDescstat <- function(caffPkparamData){
  caffPkparamData %>% 
    gather(param, value, -subjid) %>% 
    group_by(param) %>% 
    summarise_at(vars(value), funs(mean, sd, min, max)) %>% 
    mutate(value = sprintf('%0.2f (%0.2f) [%0.2f-%0.2f]', mean, sd, min, max)) %>% 
    select(`PK parameters`= param, `value: mean (sd) [min-max]`= value)
}
