job('job_dsl_example') {
  description('this is the awesome example')
  
  parameters {
        stringParam('Planet', defaultValue = 'world', description = 'This is the world')
        booleanParam('FLAG', true)
        choiceParam('OPTION', ['option 1 (default)', 'option 2', 'option 3'])
    }
  
  scm{
      git('https://github.com/learnDevops1980/simple-java-maven-app.git', 'master')
    }
  triggers {
        cron('H 5 * * 7')
    }
}
