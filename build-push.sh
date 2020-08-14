function main() 
{
    cd dockerfile/"$1"/"$2"
    docker build . -t ttbb/$1:$2
    docker push ttbb/$1:$2
}

cd "$(dirname "$0")"
main "$1" "$2"