// Establish the connection between matlab and unity by running unity as server on a socket 
// then triggering the animations created by unity UI according to identified task sent from matlab through the connected socket
using System.Collections.Generic;
using UnityEngine;
using System.Collections;
using System.Net;
using System.Net.Sockets;
using System.Linq;
using System;
using System.IO;
using System.Text;
using System.Threading;
public class AnimController : MonoBehaviour
{
    public bool Walking = false;
    public bool Running = false;
    public bool Combat = false;
    public bool ClenchIndex = false;
    public bool LeftClench = false;    
    public bool TwoFistClench = false;
    public bool RightLegUp = false;
    public bool LeftLegUp = false;
    public bool Tasbi7 = false;
    public bool FingerGun = false;
    public bool ArmChair = false;
    public bool TwoLegs = false;
    public Animator Anim;
    public float MoveSpeed = 5f;
    public float RunSpeed = 25f;
    //public float TurnSpeed = 50f;
	
TcpListener listener;
	IPAddress localAddr;
	Int32 port;
      	public String msg;
   public bool isStopping = true;
public String input= "";

    // Start is called before the first frame update
    void Start()
    {	IPAddress localAddr = IPAddress.Parse("127.0.0.1");
	Int32 port = 3000;
	listener=new TcpListener (localAddr  , port);
          listener.Start();
          print ("is listening");
        Anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {    
	try{

	if ( ! listener.Pending())
          {
          } 
          else 
          {
              print ("socket comes");
		
              TcpClient client = listener.AcceptTcpClient ();
              NetworkStream ns = client.GetStream ();
              StreamReader reader = new StreamReader (ns);
              msg = reader.ReadToEnd();
	      input = msg;
              print (msg);
		}
		}

		catch{
			if (!isStopping) throw;
		}

        if(input.Equals("Task_1")){

            Anim.SetTrigger("TwoFistClench");
            // TwoFistClench = !TwoFistClench;
            // Anim.SetBool("TwoFistClench",TwoFistClench);
	 input="";
            msg="";       
 } 
         if(input.Equals("Task_2")){ 
            Anim.SetTrigger("LegMotion");
            // TwoLegs = !TwoLegs;
            // Anim.SetBool("TwoLegs",TwoLegs);
	 input="";
            msg="";        
}
        if(input.Equals("Task_5")){
            Anim.SetTrigger("ArmChair");
            // ArmChair = !ArmChair;
            // Anim.SetBool("ArmChair",ArmChair);
	 input="";
            msg="";       
 }
         if(input.Equals("Task_4")){
            Anim.SetTrigger("FingerGun");
        //     FingerGun = !FingerGun;
        //     Anim.SetBool("FingerGun",FingerGun);
	 input="";
            msg="";         
}
         if(input.Equals("Task_3")){
            Anim.SetTrigger("Tasbi7");
            // Tasbi7 = !Tasbi7;
            // Anim.SetBool("Tasbi7",Tasbi7);
	 input="";
            msg="";        
}
        if(Input.GetKey(KeyCode.C)){
            LeftLegUp = !LeftLegUp;
            Anim.SetBool("LeftLegUp",LeftLegUp);
        }
        if(Input.GetKey(KeyCode.X)){
            RightLegUp = !RightLegUp;
            Anim.SetBool("RightLegUp",RightLegUp);
        }
       
        if(Input.GetKey(KeyCode.D)){
            LeftClench = !LeftClench;
            Anim.SetBool("LeftClench",LeftClench);
        }
        if(Input.GetKey(KeyCode.A)){
            ClenchIndex = !ClenchIndex;
            Anim.SetBool("ClenchIndex",ClenchIndex);
        }
        if(Input.GetKeyDown(KeyCode.Space)){
            Combat = !Combat;
            Anim.SetBool("Combat",Combat);
        }
        if(Input.GetKey(KeyCode.W)){
            if(Input.GetKey(KeyCode.LeftShift) && Input.GetKey(KeyCode.W)){
                Anim.SetBool("Running",true); 
                Anim.SetBool("Walking",true); 
                transform.Translate(Vector3.forward * RunSpeed * Time.deltaTime);
            }else{
            Anim.SetBool("Walking",true); 
            Anim.SetBool("Running",false); 
            transform.Translate(Vector3.forward * MoveSpeed * Time.deltaTime);
            }
        }
        else{
            Anim.SetBool("Walking",false);
        }
    }
}
