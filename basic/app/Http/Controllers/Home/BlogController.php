<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\BlogCategory;
use Image;
use Illuminate\Support\Carbon;

class BlogController extends Controller
{
    //
    public function AllBlog(){
        $blogs = Blog::latest()->get();
        return view('admin.blogs.blogs_all', compact('blogs'));

    }//End Method

    public function AddBlog(){
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->GET();
        return view('admin.blogs.blogs_add', compact('categories'));
    }//End Method

    public function StoreBlog(Request $request){

        $image = $request->file('blog_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();

            Image::make($image)->resize(430,327)->save('upload/blog/'.$name_gen);
            $save_url = 'upload/blog/'.$name_gen;

            Blog::insert([
                'blog_category_id' => $request->blog_category_id,
                'blog_title' => $request->blog_title,
                'blog_text' => $request->blog_text,
                'blog_description' => $request->blog_description,
                'blog_image' => $save_url,
                'created_at' => Carbon::now(),
            ]);
            $notification = array(
            'message' => 'Blog Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.blog')->with($notification);
    }//End Method

    public function EditBlog($id){

        $blogs = Blog::findOrFail($id);
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->GET();
        return view('admin.blogs.blogs_edit', compact('blogs', 'categories'));
    }//End Method

    public function UpdateBlog(Request $request){
        $blog_id = $request->id;
        if ($request->file('blog_image')) {
            $image = $request->file('blog_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();

            Image::make($image)->resize(430,327)->save('upload/blog/'.$name_gen);
            $save_url = 'upload/blog/'.$name_gen;

            Blog::findOrFail($blog_id)->update([
                'blog_category_id' => $request->blog_category_id,
                'blog_title' => $request->blog_title,
                'blog_text' => $request->blog_text,
                'blog_description' => $request->blog_description,
                'blog_image' => $save_url,

            ]);
            $notification = array(
            'message' => 'Blog Updated with image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.blog')->with($notification);

            // code...
        }else{
            Blog::findOrFail($blog_id)->update([
                'blog_category_id' => $request->blog_category_id,
                'blog_title' => $request->blog_title,
                'blog_text' => $request->blog_text,
                'blog_description' => $request->blog_description,

            ]);
            $notification = array(
            'message' => 'Blog Updated without image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.blog')->with($notification);

        }//End else
    }//End Method


    public function DeleteBlog($id){
        $blogs =  Blog::findOrFail($id);
        $img = $blogs->blog_image;
        unlink($img);

        Blog::findOrFail($id)->delete();

         $notification = array(
            'message' => 'Blog Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }//End Method


    public function BlogDetails($id){
        $allBlogs = Blog::latest()->limit(5)->get();
        $blogs = Blog::findOrFail($id);
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->GET();
        return view('frontend.blog_details',compact('blogs', 'allBlogs', 'categories'));
    }//End Method



    public function CategoryBlog($id){
        $blogpost = Blog::where('blog_category_id', $id)->orderBy('id', 'DESC')->get();
        $allBlogs = Blog::latest()->limit(5)->get();
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->GET();
        $categoryname = BlogCategory::findOrFail($id);
        return view('frontend.cat_blog_details', compact('blogpost', 'allBlogs', 'categories', 'categoryname'));

    }//End Method



    public function HomeBlog(){

        $allblogs = Blog::latest()->paginate(3);
        $categories = BlogCategory::orderBy('blog_category', 'ASC')->GET();
        return view('frontend.blog', compact('allblogs', 'categories'));
    }//End Method


    public function HomeMain(){
        return view('frontend.index');
    }//End Method
}
 