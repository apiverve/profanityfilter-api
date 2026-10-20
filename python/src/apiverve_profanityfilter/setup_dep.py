from setuptools import setup, find_packages

setup(
    name='apiverve_profanityfilter',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Profanity Filter is a bad word filter API that scans text for offensive language and masks detected swear words with a chosen replacement character. It returns the sanitized text and a boolean flag indicating if profanity was present.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/profanityfilter?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
