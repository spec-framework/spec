I am a spec definition consumer.
A spec definition can be: 

- a Spec binded class;
- any other class name will be resolved anyway, if possible;
- in addition, it can be #model.

IMPORTANT: I AM NOT PUBLIC. 
This class is used directly by NewSpecArrayConsumer.
This is an optimization, but restoring it as default usage (that means, calling it by #consumeFor:ifNone:) will break specs with this definition: #(model model)

