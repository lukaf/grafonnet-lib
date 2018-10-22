local grafana = import 'grafonnet/grafana.libsonnet';
local cloudwatch = grafana.cloudwatch;

{
  basic: cloudwatch.target(
      'eu-west-1',
      'AWS/ApplicationELB',
      datasource='CloudWatch',
      metricName='RequestCountPerTarget',
      statistics='Sum',
      alias='ELB requests per instance',
      dimensions={
        LoadBalancer: 'app/lb',
        TargetGroup: 'targetgroup/tg'
      },
  )
}


