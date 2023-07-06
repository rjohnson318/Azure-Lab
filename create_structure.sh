#!/bin/bash                                                                                                                                                             
                                                                                                                                                                         
 # Define the directories to be created                                                                                                                                  
 modules=("network" "compute" "storage")                                                                                                                                 
 policies=("policy1" "policy2")                                                                                                                                          
 management_groups=("group1" "group2")                                                                                                                                   
 environments=("dev" "staging" "prod")                                                                                                                                   
                                                                                                                                                                         
 # Create the root directories                                                                                                                                           
 mkdir modules policies management_groups environments                                                                                                                   
                                                                                                                                                                         
 # Create subdirectories and files under modules                                                                                                                         
 for module in "${modules[@]}"; do                                                                                                                                       
   mkdir "modules/$module"                                                                                                                                               
   touch "modules/$module/main.tf" "modules/$module/variables.tf" "modules/$module/outputs.tf"                                                                           
 done                                                                                                                                                                    
                                                                                                                                                                         
 # Create subdirectories and files under policies                                                                                                                        
 for policy in "${policies[@]}"; do                                                                                                                                      
   mkdir "policies/$policy"                                                                                                                                              
   touch "policies/$policy/main.tf" "policies/$policy/variables.tf" "policies/$policy/outputs.tf"                                                                        
 done                                                                                                                                                                    
                                                                                                                                                                         
 # Create subdirectories and files under management_groups                                                                                                               
 for group in "${management_groups[@]}"; do                                                                                                                              
   mkdir "management_groups/$group"                                                                                                                                      
   touch "management_groups/$group/main.tf" "management_groups/$group/variables.tf" "management_groups/$group/outputs.tf"                                                
 done                                                                                                                                                                    
                                                                                                                                                                         
 # Create subdirectories and files under environments                                                                                                                    
 for environment in "${environments[@]}"; do                                                                                                                             
   mkdir "environments/$environment"                                                                                                                                     
   for module in "${modules[@]}"; do                                                                                                                                     
     mkdir "environments/$environment/$module"                                                                                                                           
     touch "environments/$environment/$module/terragrunt.hcl"                                                                                                            
   done                                                                                                                                                                  
   for policy in "${policies[@]}"; do                                                                                                                                    
     mkdir "environments/$environment/policies/$policy"                                                                                                                  
     touch "environments/$environment/policies/$policy/terragrunt.hcl"                                                                                                   
   done                                                                                                                                                                  
   for group in "${management_groups[@]}"; do                                                                                                                            
     mkdir "environments/$environment/management_groups/$group"                                                                                                          
     touch "environments/$environment/management_groups/$group/terragrunt.hcl"                                                                                           
   done                                                                                                                                                                  
 done                                                                                                                                                                    
                                                                                                                                                                         
 # Create the root terragrunt.hcl file                                                                                                                                   
 touch terragrunt.hcl 