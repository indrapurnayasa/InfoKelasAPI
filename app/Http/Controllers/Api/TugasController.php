<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\task;
use Illuminate\Support\Facades\Auth;
use Storage;


class TugasController extends Controller
{
    public function create(Request $request){
    
        $task = new task;
        $task->user_id  = Auth::user()->id;
        $task->name_class = $request->name_class;
        $task->date = $request->date;
        $task->meeting = $request->meeting;
        $task->save();
        $task->user;

        $userID = $task->user_id;
        
        $user = new User();
        $userFcmToken = $user->where('id', $userID)->get(['fcm_token'])->first();

        $ch=curl_init("https://fcm.googleapis.com/fcm/send");
        $header=array("Content-Type:application/json", "Authorization: key=AAAAD8JQtos:APA91bHmzp60SLmPEdX8EYJdNO-8acDmMWDCCIXjAww0W0qIl00U_VBsrphxUXPcR-tGTNXROHEnwP0E3ObmqwFYTCFn1--6sUza6CUKUaRxk5bAErvjlSQ6Cm19zYMETAMr6tkrMRJM");
        $data=json_encode(array("to"=>"/topics/allDevices","data"=>array("title"=>"Info Kelas App", "message"=>"Kelas Baru Telah di Publish!")));
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_exec($ch);
        // return response()->json([
        //     'success' => true,
        //     'message' => 'posted',
        //     'task'=> $task
        // ]);
    }

    public function update(Request $request){
        $task = task::find($request->id);

        if(Auth::user()->id != $task->user_id){
            return response()->json([
                'success' => false,
                'message' => 'unautorized access'
            ]);
        }
        
        $task->name_class = $request->name_class;
        $task->date = $request->date;
        $task->meeting = $request->meeting;
        $task->update();
        return response()->json([
            'success' => true,
            'message' => 'post edited'
        ]);
    }

    public function delete(Request $request){
        $task = task::find($request->id);

        if(Auth::user()->id != $task->user_id){
            return response()->json([
                'success' => false,
                'message' => 'unautorized access'
            ]);
        }

        // if($task->file !=''){
        //     Storage::delete('public/task/'.$task->file);
        // }
        $task->delete();
        return response()->json([
            'success' => true,
            'message' => 'post deleted'
        ]);
    }


    public function task(){
        $tasks = task::orderBy('id', 'desc')->get();
        //$tasks->user_id  = Auth::user()->id;
        foreach($tasks as $task){
            $task['user'] = user::where('id', $task->user_id)->first();
        }
        return response()->json([
            'success' => true,
            'task' => $tasks
        ]);
    }
    
    public function getUser(Request $request){
        $user = User::find(Auth::user()->id);
        $task = new task();
        $task = $task->where('user_id', $user->id)->get();
        $total = $task->count();
        return response()->json([
            'success' => true,
            'user' => $user,
            'totalTask' => $total
        ]);
    }
    
    public function updateUser(Request $request){
        $user = User::find(Auth::user()->id);
        $user->email = $request->email;
        $user->name = $request->name;
        $user->lastname = $request->lastname;
        $photo ='';
    	if($request->photo!=''){
    		$photo = time().'.jpg';
    		file_put_contents('storage/profiles/'.$photo,base64_decode($request->photo));
    		$user->photo = $photo;
    	}
        $user->update();
        return response()->json([
            'success' => true,
            'user' => $user
        ]);
    }
    
}