properties([
    parameters([
        [
            $class: 'ChoiceParameter', 
            choiceType: 'PT_SINGLE_SELECT', 
            description: '', 
            filterable: false, 
            name: 'Release', 
            randomName: 'choice-parameter-21337077649621572', 
            script: [
                $class: 'GroovyScript', 
                fallbackScript: '', 
                script: '''// Find relevant AMIs based on their name
                    return "a\nb\nc" '''
            ]
        ]
    ])
])

pipeline {
    agent any
    stages {
        stage("Release scope") {
            steps {
                script {
                    // Prepare a list and write to file
                    sh "echo \"patch\nminor\nmajor\" > ${WORKSPACE}/list"

                    // Load the list into a variable
                    env.LIST = readFile (file: "${WORKSPACE}/list")

                    // Show the select input
                    env.RELEASE_SCOPE = input message: 'User input required', ok: 'Release!',
                            parameters: [choice(name: 'RELEASE_SCOPE', choices: env.LIST, description: 'What is the release scope?')]
                }
                echo "Release scope selected: ${env.RELEASE_SCOPE}"
            }
        }
    }
}
