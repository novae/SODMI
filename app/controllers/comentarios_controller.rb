class ComentariosController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comentario= @post.comentarios.build(params[:comentario])
    @comentario.save
    redirect_to   @post
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy
    redirect_to @comentario.post
  end
end
