node{
    git branch: 'master' , url: 'https://github.com/hadeelharidy88/jenkines-pipeline.git'
    stage('build'){
        try{
            sh'echo "build stage"'
        }

        catch(Exception e){
            sh'echo "exception found"'
            throw e
        }
    }

    stage('test'){
        if(env.BRANCH_NAME== 'feature'){
            sh'ech "test stage"'
        }

        else{
            sh'echo "skip test stage"'
        }
    }
}