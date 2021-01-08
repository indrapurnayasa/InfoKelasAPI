<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\comment;
use App\task;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    public function create(Request $request){
        $comment = new Comment;
        $comment->user_id = Auth::user()->id;
        $comment->task_id = $request->id;
        $comment->comment = $request->comment;
        $comment->save();
        $comment->user;

        return response()->json([
            'success' => true,
            'comment' =>$comment,
            'message' =>'comment added'
        ]);
    }

    public function update(Request $request){
        $comment = Comment::find($request->id);

        if($comment->id != Auth::user()->id){
            return response()->json([
                'success' => false,
                'message' => 'unautorized access'
            ]);
        }
        $comment->comment = $request->comment;
        $comment->update();

        return response()->json([
            'success' => true,
            'message' => 'comment edited'
        ]);
    }

    
    public function delete(Request $request){
        $comment = Comment::find($request->id);

        if($comment->user_id != Auth::user()->id){
            return response()->json([
                'success' => false,
                'message' => 'unautorized access'
            ]);
        }
        $comment->delete();

        return response()->json([
            'success' => true,
            'message' => 'comment deleted'
        ]);
    }

    public function comments(Request $request){
        // $tasks = task::orderBy('id', 'desc')->get();
        // foreach($tasks as $task){
        //     $task->user;

        //     $task['CommentCount'] = count($task->comment);
        // }
        // return response()->json([
        //     'success' => true,
        //     'task' => $tasks
        // ]);

        //$comments = Comment::where('id', Auth::user()->id)->orderBy('id','desc')->get();
        $comments = Comment::where('id','asc',$request->id)->get();
        //$comments = Comment::where('task_id','comments',$request->id)->get();
        foreach($comments as $comment){
            $comment->user;
            $comment->comments;
        }
        return response()->json([
            'success' => true,
            'comments' => $comments
        ]);
    }
}