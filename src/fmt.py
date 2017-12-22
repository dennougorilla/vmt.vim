def vim_align(shiftwidt,lines):
    word_lst=[]
    for i in lines:
        word_lst.append(i.split())
    
    max_element=0
    for i in word_lst:
        if(len(i)>max_element):
            max_element=len(i)
    
    max_word=[]
    for i in range(max_element):
        max_word.append(0)
    
    for i in range(len(word_lst)):
        num_element=len(word_lst[i])
        for j in range(num_element):
            if(len(word_lst[i][j])>max_word[j]):
                max_word[j]=len(word_lst[i][j])
    
    for i in range(len(word_lst)):
        num_element=len(word_lst[i])
        for j in range(num_element):
            for k in range(max_word[j]-len(word_lst[i][j])+shiftwidth):
                word_lst[i][j]=word_lst[i][j]+" "
    
    for i in word_lst:
        print(i[0]+i[1]+i[2]+i[3]+i[4])
    
