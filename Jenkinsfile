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
                '''// Find relevant AMIs based on their name
                    def sout = new StringBuffer(), serr = new StringBuffer()
                    def proc = "cat ./test.json".execute()
	            proc.consumeProcessOutput(sout, serr)
                    proc.waitForOrKill(10000)
                    return sout.tokenize()'''

            ]
        ]
    ])
])

