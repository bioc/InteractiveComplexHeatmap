\name{makeInteractiveComplexHeatmap}
\alias{makeInteractiveComplexHeatmap}
\title{
Process the heatmaps on the sever side
}
\description{
Process the heatmaps on the sever side
}
\usage{
makeInteractiveComplexHeatmap(input, output, session, ht_list,
    heatmap_id = shiny_env$current_heatmap_id,
    click_action = NULL, brush_action = NULL)
}
\arguments{

  \item{input}{Passed from the Shiny server function.}
  \item{output}{Passed from the Shiny server function.}
  \item{session}{Passed from the Shiny server function.}
  \item{ht_list}{A \code{\link[ComplexHeatmap]{Heatmap-class}} or a \code{\link[ComplexHeatmap]{HeatmapList-class}} object.}
  \item{heatmap_id}{The corresponding heatmap ID from the UI. If there is only one interactive heatmap in the app,  this argument does not need to be specified and it will use the current one specified in \code{\link{InteractiveComplexHeatmapOutput}}.}
  \item{click_action}{Additional action at the sever side when receiving a click event on the UI. If \code{action} is selected as \code{hover} or \code{dblclick} in \code{\link{InteractiveComplexHeatmapOutput}}, then this argument controls the action for the hover or dblclick event.}
  \item{brush_action}{Additional action at the sever side when receiving a brush event on the UI.}

}
\value{
No value is returned.
}
\examples{
if(interactive()) {
    ht = Heatmap(m)
    ht = draw(ht)

    ui = fluidPage(
        InteractiveComplexHeatmapOutput()
    )

    server = function(input, output, session) {
        makeInteractiveComplexHeatmap(input, output, session, ht)
    }

    shiny::shinyApp(ui, server)
}
}