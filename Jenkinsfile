node {
    // This displays colors using the 'xterm' ansi color map.
    ansiColor('xterm') {
        stage "Pari"
        // Just some echoes to show the ANSI color.
        stage "\u001B[31mI'm Red\u001B[0m Now not"
    }
    wrap([$class: 'AnsiColorBuildWrapper']) {
        stage "\u001B[31m I'm Red \u2717 \u001B[0m Now not"
    }
}
