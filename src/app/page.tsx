"use client";

import { Button } from "@/components/ui/button";
import { useTRPC } from "@/trpc/client";
import { useMutation } from "@tanstack/react-query";


const page = () => {
  const trpc = useTRPC();
  const invoke = useMutation(trpc.invoke.mutationOptions({}))

  return (
    <div className="p-1 max-w-7xl mx-auto">
    <Button onClick={()=>invoke.mutate({text: "Ravitej"})}>
      Invoke Inngest Function
    </Button>
  </div>
  );
};

export default page