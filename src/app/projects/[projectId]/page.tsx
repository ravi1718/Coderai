interface props{
  params: Promise<{
    projectId: string;
  }>
}


const Page = async ({params}: props) =>{
  const {projectId} = await params;
  return(
    <div>
      project id: {projectId}
    </div>
  )
}

export default Page;