{
  /**
   * Return a CloudWatch Target
   * 
   * @param region
   * @param namespace
   * @param datasource
   * @param metricName
   * @param statistics
   * @param alias
   * @param highResolution
   * @param period
   * @param dimensions
   
   * @return Panel target
   */

  target(
      region,
      namespace,
      datasource=null,
      metricName=null,
      statistics='Average',
      alias=null,
      highResolution=false,
      period='1m',
      dimensions={}
  ):: {
    region: region,
    namespace: namespace,
    [if datasource != null then 'datasource']: datasource,
    metricName: metricName,
    statistics: [ statistics ],
    [if alias != null then 'alias']: alias,
    highResolution: highResolution,
    period: period,
    dimensions: dimensions,
  },
}
