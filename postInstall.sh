 python_executable=$(which python)

 if [ -z "$python_executable" ]; then
     echo "Error: Could not find Python executable."
     exit 1
 fi

 "$python_executable" -m playwright install --with-deps

 # Make the script executable (this is redundant in Streamlit Cloud, but good practice)
 chmod +x "$0"
