using UnityEngine;

public class Spin : MonoBehaviour
{
    public float speed = 90.0f;

    void Update() 
    {
        transform.Rotate(Vector3.up * speed * Time.deltaTime);
    }
}
